library(shiny)
dados=read.csv2("energia.csv",header=T)
saida=dados[,2:6]
rownames(saida)=dados[,1]
shinyServer(function(input,output){
  if (input$classe=="comercial") coluna=1
  output$table<-renderTable(
    summary(saida[,coluna])
  )
})
