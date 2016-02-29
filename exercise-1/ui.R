library(shiny)
library(plotly)
data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")

name <- colnames(data)[5:ncol(data)]

shinyUI(fluidPage(
  # Create a title
  titlePanel("Exports"),
  # Create sidebar layout
  sidebarLayout(
    # Side panel for controls
    sidebarPanel( "sidebar panel",
      # Input to select variable to map
      selectInput('exports', label = h3("Choose food"),
                    name,
                  selected = 'beef')                  
    ),
    # Main panel: display plotly map
    mainPanel(
      plotlyOutput('map')
    )
  )
))