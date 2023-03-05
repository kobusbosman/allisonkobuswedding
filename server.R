server <- function(input, output, session) {
  renderSurvey()
  
  observeEvent(input$submit, {
    response_data <- getSurveyData()
    
    # Read our sheet
    values <- read_sheet(ss = sheet_id, sheet = "main")
    
    # Check to see if our sheet has any existing data.
    # If not, let's write to it and set up column names. 
    # Otherwise, let's append to it.
    
    if (nrow(values) == 0) {
      sheet_write(data = response_data,
                  ss = sheet_id,
                  sheet = "main")
    } else {
      sheet_append(data = response_data,
                   ss = sheet_id,
                   sheet = "main")
    }
    
  })
  
}
