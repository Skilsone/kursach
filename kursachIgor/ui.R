library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  tags$head( tags$link ( rel = "stylesheet " , type = "text/css" , href = "main.css")),
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  h1("Kursach"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout( 
    sidebarPanel( h3("Data Selection"), 
                  selectInput("ds", "Choose a dataset:",  choices = c("iris", "Spam", "mtcars")),
                  numericInput("obs",  "Number of Obs:",  10),  
                  submitButton("Load Preview Data") 
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  ),
)

