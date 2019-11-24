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
                checkboxGroupInput("checkGroup", label = h3("Выберите предикторы"), 
                      choices = list("Липпидограмма" = 1, "Анализ крови" = 2, "ЭКГ" = 3),
                          selected = 1),
    ),
    # Show a plot of the generated distribution
    mainPanel(
      navbarPage(
        title = 'Выбранные предикторы',
        tabPanel('Липпидограмма', "lip"),
        tabPanel('Анализ крови'),
        tabPanel('ЭКГ')
      ),
      plotOutput(outputId = "box"),
      
    )
  ),
)

