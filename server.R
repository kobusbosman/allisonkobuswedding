server <- function(input, output, session) {
  
  shinyjs::addClass(id = "menus", class = "display:inline-block")

  r_global <- reactiveValues()

  temp_dir <- tempdir()
  
  googledrive::drive_download("allisonkobusguests", path = glue::glue(temp_dir, "/allisonkobusguests.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  data_guests <- read_csv(glue::glue(temp_dir, "/allisonkobusguests.csv"), 
                          locale = locale(decimal_mark = ","),
                          col_types = cols(.default = col_character()))
  r_global$data_guests <- data_guests
  
  googledrive::drive_download("paymentlinks", path = glue::glue(temp_dir, "/paymentlinks.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  paymentlinks <- read_csv(glue::glue(temp_dir, "/paymentlinks.csv"), 
                           locale = locale(decimal_mark = ","),
                           col_types = cols(.default = col_character()))
  r_global$paymentlinks <- paymentlinks
  
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
  
  output$zelle <- renderUI({
    # if ( 1 == 2) {
      tags$a(
        img(
          src = "Zelle.png",
          align = "center",
          width = "150px"
        ),
        href = gsub(".{4}$", "", URLdecode(list.files("www/", ".+zelle.+.txt$"))),
        target="_blank"
      )
    # } else {
    #   "hoi"
    # }
  })

  output$venmo <- renderUI({
    tags$a(
      img(
        src = "Venmo.png",
        align = "center",
        width = "150px"
      ),
      href = gsub(".{4}$", "", URLdecode(list.files("www/", ".+venmo.+.txt$"))),
      target="_blank"
    )  })

  output$ing <- renderUI({
    tags$a(
      img(
        src = "ING.png",
        align = "center",
        width = "150px"
      ),
      href = gsub(".{4}$", "", URLdecode(list.files("www/", ".+ing.+.txt$"))),
      target="_blank"
    )
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
              uiOutput("zelle"),
              p("Zelle", style = "margin-top:5px")
            ),
            column(
              6,
              align = "center",
              uiOutput("venmo"),
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
              uiOutput("ing"),
              p("ING", style = "margin-top:5px")
            )
          )
        )
      )
    )
  })
}
