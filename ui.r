library(shiny)
shinyUI(
navbarPage("Prediction of Iris Species",
        tabPanel("App",
        sidebarLayout(
                sidebarPanel(numericInput("SL", "Sepal Length", 5),
                             numericInput("SW", "Sepal Width", 5),
                             numericInput("PL", "Petal Length", 5),
                             numericInput("PW", "Petal Width", 5),
                             submitButton('Submit')
                ),
                mainPanel(h3('Predicted Species'),
                          h4('Your input'),
                          verbatimTextOutput('inputvalue'), 
                          h4('Prediction'),
                          verbatimTextOutput('prediction')
                )
        )),
        tabPanel("Userguide",
                 mainPanel(h4('This App was designed to predict iris species based on the characteristics
                              of respective entity.'),
                           h4('The prediction classification model was built based on neural network
                              with the iris data provided in R.'),
                           h4('Please insert values for each Sepal Length, Sepal Width,
                              Petal Length and Petal Width.'),
                           h4('Then, press submit.'),
                           h4('You will see your input under \"Your input\" and predicted species under \"Prediction\".')
                           )
)))
