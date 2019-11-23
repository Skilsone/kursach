library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  includeCSS("main.css"),
  # Application title
  titlePanel("Расчёт регрессий"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout( 
    sidebarPanel( h3("Загрузите файл"), 
                  fileInput("file1", "Загрузите таблицу в формате .csv",
                            multiple = FALSE,
                            accept = c("text/csv",
                                       "text/comma-separated-values,text/plain",
                                       ".csv")),
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  ),
)

