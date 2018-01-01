library(shiny)
data(iris)
shinyServer(function(input,output){
  output$table<-renderTable(
    summary(subset(iris,Species==input$species)[,-5])
  )
})
