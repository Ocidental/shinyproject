library(shiny)
  shinyUI(fluidPage(
     titlePanel("Exemplo 2"),
       sidebarLayout(
         sidebarPanel(
           selectInput("species","select a species:",
                       c("setosa","versicolor","virginica"))),
         mainPanel(
           tableOutput("table")
         )
)
))