server <- function(input, output, session) {
  
  shinyjs::addClass(id = "menus", class = "display:inline-block")

  r_global <- reactiveValues()
  
  temp_dir <- tempdir()
  
  googledrive::drive_download("allisonkobusguests", path = glue::glue(temp_dir, "/allisonkobusguests.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  data_guests <- read_csv(glue::glue(temp_dir, "/allisonkobusguests.csv"), 
                          locale = locale(decimal_mark = ","),
                          col_types = cols(.default = col_character()))
  r_global$data_guests <- data_guests
  
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
        "Many thanks indeed!"
      )
    )
    r_global$data_guests <- r_global$data_guests %>% rows_update(tibble(name = input$name, rsvp = input$rsvp, song = input$song, remarks = input$remarks))
    temp_dir <- tempdir()
    readr::write_csv(r_global$data_guests, glue::glue(temp_dir, "/new_data_guests.csv"))
    googledrive::drive_update("allisonkobusguests", glue::glue(temp_dir, "/new_data_guests.csv"))
  })
}
