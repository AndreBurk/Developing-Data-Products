library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Predicting outcome variable by different predictors."),
    sidebarPanel(
        h4("This app allows you to vary the outcome variable and choose two predictor variables for performing a linear regression model on the `mtcars` dataset."),
        h4("The summary will then show you the performance of the different predictors and the overall model performance."),
        selectInput("outcome", "Outcome Variable", names(mtcars)),
        selectInput("pred1", "Predictor 1", names(mtcars), names(mtcars)[[2]]),
        selectInput("pred2", "Predictor 2", names(mtcars), names(mtcars)[[3]])
    ),
    mainPanel(
        h3("Results of prediction"),
        h4("Outcome Variable:"),
        verbatimTextOutput("out1"),
        h4("Predictor 1 Variable:"),
        verbatimTextOutput("predictors1"),
        h4("Predictor 2 Variable:"),
        verbatimTextOutput("predictors2"),
        h4("Summary of trained model"),
        verbatimTextOutput("prediction")
        
    )
))