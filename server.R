library(shiny)
set.seed(1)
shinyServer(function(input, output){
model <- nnet(formula=Species~.,size=3,data=iris)
        output$inputvalue <- renderPrint(c(input$SL,input$SW,input$PL,input$PW))
        output$prediction <- renderPrint(predict(model, cbind(
                "Sepal.Length"=input$SL,"Sepal.Width"=input$SW,"Petal.Length"=input$PL
                ,"Petal.Width"=input$PW), type="class"))
        
})