library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  includeCSS("main.css"),
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout( 
    sidebarPanel( h3("Data Selection"), 
                verticalLayout("Name1", "Name2", "Name3"),
          radioButtons(inputId="color", "Choose", list("blue", "green", "green")),
                  submitButton("Load Preview Data") 
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput(outputId = "box"),
      
    )
  ),
)

