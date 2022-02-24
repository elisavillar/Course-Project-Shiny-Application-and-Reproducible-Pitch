# Server file to deploy app Name and Age

library(shiny)

# Define server logic required to display the greeting message
shinyServer(function(input, output) {
  
  # Store the name input into variable name when Go is pressed
  name <- eventReactive(input$goButton, {
    input$name
    
  })
  
  # Store the age input into variable age when Go is pressed
  age <- eventReactive(input$goButton, {
    input$age
  })
  
  # Get current year and store it in variable year
  year <- as.numeric(format(Sys.Date(), "%Y"))
  
  # Paste the greeting message with name and the calculation of the year when the person was born
  output$greeting <- renderText({
    paste0("Hello ", name(), ", you were born in: ", year - age())
  })
  
})
