#
# This is the server logic of a Shiny web application. 
#


library(shiny)
library(ggplot2)

# Define server logic required to draw a scatter plot between mpg and hp based on user's selections
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({

        # Filter data based on user's input
      
        mtcars$cyl<-as.factor(mtcars$cyl)
        mtcars$gear<-as.factor(mtcars$gear)
        
        trns<-if(input$transmission == TRUE) 1 else 0
        disprange<-input$displacement
        
        cars<-mtcars[mtcars$cyl==input$cylinder & 
                       (mtcars$disp > disprange[1] & mtcars$disp <= disprange[2]) & mtcars$am == trns ,]
        
        # Draw the scatter plot based on user's input
        
        ggplot(cars,aes(x=cars$hp,y=cars$mpg,color=cars$gear))+geom_point(size=4)+
          labs(title="Car Performance", x="Horse Power", y="Miles Per Gallon"
               ,colour="Gears")+geom_smooth(method="lm")
        

    })

})
