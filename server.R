library(shiny)
library(datasets)
library(ggplot2)
library(Hmisc)

shinyServer( function(input, output) {
  
  
  output$text1<-renderText({
    paste0('rating~',input$var)
  })
  
  
  output$plot1<-renderPlot({
    
    attitudes<-data.frame(rating=attitude[,1],var2=attitude[[input$var]],var3=attitude[[input$var2]])
    ggplot(attitudes,aes(x=rating,y= var2,fill=var3))+geom_point(shape=21,size=3.5,alpha=.5)+geom_smooth(method='lm')+scale_fill_gradient(low='white',high = 'red',guide = guide_colourbar(title=input$var2))+ylab(input$var)
    
  })
  
  output$text2<-renderPrint({
    attitudes<-data.frame(rating=attitude[,1],var2=attitude[[input$var]])
    fit<-with(data = attitudes,lm(rating ~ var2))
    summary(fit)
  })
  
})