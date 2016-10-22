library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Sticky!"),

    sidebarPanel(
        selectInput("face", "Expression:", c("Happy", "Sad", "Surprised", "Annoyed")),
        selectInput("gender", "Gender:", c("Female","Male")),
        selectInput("arms", "Arms:", c("down", "nuetral", "up", "hip", "wave"))

    ),
    mainPanel(
        plotOutput("stick", width = "400px")
    )
))
