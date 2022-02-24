#' ------- App Name and Age -------
#' 
#' This App was created for the course Developing Data Products by Johns Hopkins University.
#' The instructions were:
#' 
#'  1) Write a shiny application with associated supporting documentation. The documentation should be 
#'     thought of as whatever a user will need to get started using your application.
#'  2) Deploy the application on Rstudio's shiny server
#'  3) Share the application link by pasting it into the provided text box
#'  4) Share your server.R and ui.R code on github
#'
#' The application must include the following:
#' 
#'  * Some form of input (widget: textbox, radio button, checkbox, ...)
#'  * Some operation on the ui input in sever.R
#'  * Some reactive output displayed as a result of server calculations
#'  * You must also include enough documentation so that a novice user could use your application.
#'  * The documentation should be at the Shiny website itself. Do not post to an external link.

library(shiny)

# Define UI for application ask for name and age and then displays a greeting message with the name of the person
# and the year that they were born
shinyUI(fluidPage(

  # Application title
  titlePanel(
    h1("Tell me your name and age", align = "center")
    ),
  
  # Side bar with two inputs: name and age, also a Go button to display the message
  sidebarLayout(
    sidebarPanel(
      textInput("name", "What's your name?"),
      numericInput("age", "How old are you?", value = NA),
      actionButton("goButton", "Go")
    ),
    
    # Main panel with greeting message
    mainPanel(
      h3(textOutput("greeting", container = span))
    )
  )))

