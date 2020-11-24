#
# This is the user-interface definition of a Shiny web application. 
#

library(shiny)
library(shinyWidgets)
# Define UI for application that draws a scatter plot for Car Performance based on different specs
shinyUI(fluidPage(

    # Application title
    titlePanel("Car Performance Gauge"),
   
    # Sidebar for specs input
    sidebarLayout(
        sidebarPanel(
            h2("Select specs for your car"),
            radioButtons("cylinder","No. of cylinders:",
                         c("Four"="4",
                           "Six"="6",
                           "Eight"="8")),
            
            sliderInput("displacement",
                        "Displacement:",
                        min = 70,
                        max = 500,
                        value = c(70,500)),
            switchInput("transmission",value = TRUE)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           
             plotOutput("distPlot")
        )
    )
))
