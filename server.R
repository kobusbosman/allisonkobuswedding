server <- function(input, output, session) {
  
  shinyjs::addClass(id = "menus", class = "display:inline-block")

  r_global <- reactiveValues()

  temp_dir <- tempdir()
  
  googledrive::drive_download("allisonkobusguests", path = glue::glue(temp_dir, "/allisonkobusguests.csv"), overwrite = TRUE)
  data_guests <- read_csv(glue::glue(temp_dir, "/allisonkobusguests.csv"), 
                          locale = locale(decimal_mark = ","),
                          col_types = cols(.default = col_character()))
  r_global$data_guests <- data_guests
  
  googledrive::drive_download("paymentlinks", path = glue::glue(temp_dir, "/paymentlinks.csv"), overwrite = TRUE)
  paymentlinks <- read_csv(glue::glue(temp_dir, "/paymentlinks.csv"), 
                           locale = locale(decimal_mark = ","),
                           col_types = cols(.default = col_character()))

  output$nameselection <- renderUI({
    selectInput(
      inputId = "name",
      label = "Please select your name",
      choices = r_global$data_guests$name
    )
  })
  output$rsvp <- renderUI({
    selectInput(
      inputId = "rsvp",
      label = "Are you attending the wedding?",
      choices = c("Yes", "No")
    )
  })
  output$song <- renderUI({
    textAreaInput(
      inputId = "song",
      label = "Do you have a favorite song you would like to be played?",
      height = "25px"
    )
  })
  output$remarks <- renderUI({
    textAreaInput(
      inputId = "remarks",
      label = "Do you have additional remarks?",
      height = "25px"
    )
  })
  
  observeEvent(input$submit, {
    showModal(
      modalDialog(
        title = "Thanks for confirming!",
        glue::glue("Your RSVP for {input$name} has been saved. Please fill in the form for other members of your family.")
      )
    )
    r_global$data_guests <- r_global$data_guests %>% rows_update(
      tibble(
        name = input$name,
        rsvp = input$rsvp,
        song = input$song,
        remarks = input$remarks,
        datetime = as.character(Sys.time())
      )
    )
    temp_dir <- tempdir()
    readr::write_csv(r_global$data_guests, glue::glue(temp_dir, "/new_data_guests.csv"))
    googledrive::drive_update("allisonkobusguests", glue::glue(temp_dir, "/new_data_guests.csv"))
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
    
    data_markers_accomodation <- tibble(
      longitude = c(-77.4110323, -76.6110052, -77.0366835, -78.4540443),
      latitude = c(39.4142055, 39.2865262, 38.8977968, 38.4753545),
      name = c(
        "<b>Frederick</b>", 
        "<b>Baltimore</b>", 
        "<b>Washington</b>",
        "<b>Shenandoah National Park</b>"
      )
    )
    
    get_map_wedding(
      data_markers = data_markers_accomodation,
      icon_markers = "home", 
      zoom = 12
    )
    
  })
}
