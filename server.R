server <- function(input, output, session) {
  
  shinyjs::addClass(id = "menus", class = "display:inline-block")
  
  client_time <- reactive(lubridate::as_datetime(as.numeric(input$client_time) / 1000))
  time_zone_offset <- reactive(-(as.numeric(input$client_time_zone_offset)/60))
  
  observe({
    print(input$navtabs)
  })
  
  observeEvent(input$submit, {
    showModal(
      modalDialog(
        title = "Thanks for confirming!",
        div(
          style = "text-align:justify",
          HTML(
            paste(
              glue::glue("The attendance for {input$firstname} {input$lastname} "),
              "has been saved. You can now add additional members of your family."
            )
          )
        )
      )
    )
    
    temp_dir <- tempdir()
    
    googledrive::drive_download("allisonkobusguests", path = glue::glue(temp_dir, "/allisonkobusguests.csv"), overwrite = TRUE)
    data_guests <- read_csv(glue::glue(temp_dir, "/allisonkobusguests.csv"), 
                            locale = locale(decimal_mark = ","),
                            col_types = cols(.default = col_character()))
    
    data_guests <- data_guests %>% bind_rows(
      tibble(
        firstname = input$firstname,
        lastname = input$lastname,
        rsvp = input$rsvp,
        song = input$song,
        remarks = input$remarks,
        datetime = as.character(client_time()),
        utc = paste0("UTC", ifelse(grepl("-", time_zone_offset()), time_zone_offset(), paste0("+", time_zone_offset())))
      )
    )

    readr::write_csv(data_guests, glue::glue(temp_dir, "/new_data_guests.csv"))
    googledrive::drive_update("allisonkobusguests", glue::glue(temp_dir, "/new_data_guests.csv"))
    
    updateTextInput(inputId = "firstname", value = "")
    updateTextInput(inputId = "lastname", value = "")
    updateTextInput(inputId = "song", value = "")
    updateTextInput(inputId = "remarks", value = "")
  })
  
  output$allcodes <- renderUI({
    tagList(
      fluidRow(
        column(
          12,
          align = "center",
          h1("American", style = "margin-top: 15px;"),
          fluidRow(
            column(
              6,
              qrcode_plotter("Zelle"),
              p("Zelle", style = "margin-top:5px")
            ),
            column(
              6,
              align = "center",
              qrcode_plotter("Venmo"),
              p("Venmo", style = "margin-top:5px")
            )
          )
        )
      ),
      fluidRow(
        column(
          12,
          align = "center",
          h1("Dutch", style = "margin-top: 15px;"),
          fluidRow(
            column(
              12,
              align = "center",
              qrcode_plotter("ING"),
              p("ING", style = "margin-top:5px")
            )
          )
        )
      )
    )
  })
  
  output$thingstodo <- renderLeaflet({

    data_markers <- tibble(
      longitude = c(-77.4110323, -76.6110052, -77.0366835, -78.19405, -77.8245632, -77.8422268),
      latitude = c(39.4142055, 39.2865262, 38.8977968, 38.9027749, 39.137776, 39.2999253),
      name = c(
        "<b>Frederick</b>",
        "<b>Baltimore</b>",
        "<b>Washington</b>",
        "<b>Shenandoah National Park</b>",
        "<b>Wedding location</br>",
        "<b>Hampton Inn & Suites</br>"
      )
    )

    get_map_wedding(
      data_markers = data_markers,
      icon_markers = "home",
      zoom = 7
    )
  })

  output$imageboard <- renderUI({
    fluidRow(
      column(
        12,
        align="center",
        style = "margin-bottom:50px;",
        do.call(
          div,
          lapply(
            imagepaths_read,
            function(x) {
              img(src=x, align = "center", class = "imageboardimage")
            }
          )
        )
      )
    )
  })
}
