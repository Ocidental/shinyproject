library(shiny)
  shinyUI(fluidPage(
     titlePanel("Consumo Energia no Brasil"),
       sidebarLayout(
         sidebarPanel(
           selectInput("classe","selecione uma classe de consumo:",
                       c("comercial","residencial","industrial","outras","total"))),
         mainPanel(
           tableOutput("table")
         )
)
))
