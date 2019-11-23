library(shiny)

server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    req(input$file1)
  })
}

