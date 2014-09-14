library(shiny)
data(mtcars)

shinyServer(
    function(input, output) {
        selectedData <- reactive({
            mtcars[, c(input$outcome, input$pred1, input$pred2)]
        })
                
        output$predictors1 <- renderPrint({input$pred1})
        output$predictors2 <- renderPrint({input$pred2})
        output$out1 <- renderPrint({input$outcome})
        output$prediction <- renderPrint({summary(lm(selectedData()[,1] ~ selectedData()[,2] + selectedData()[,3]))})
        
    }
)