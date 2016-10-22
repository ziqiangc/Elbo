library(shiny)
library(Elbo)

shinyServer(function(input, output){
    output$stick <- renderPlot({
        stickyplot(face=input$face,
                   gender=input$gender,
                   arms=input$arms)
    })

})
