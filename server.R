library(shiny)


shinyServer(function(input, output) {
  output$s.interest <- renderText({
    paste("Simple Interest",((input$s.amount * input$s.rate * (input$s.month/12))/100),"            Total Amount : ", input$s.amount + (((input$s.amount * input$s.rate * (input$s.month/12))/100)))
    
    })
  
  output$c.interest <- renderText({
    paste("Compound Interest",((input$c.amount *((1+ (input$c.rate/100))^input$c.years)) - input$c.amount),"            Total Amount : ", (input$c.amount *((1+ (input$c.rate/100))^input$c.years)))
    
  })  
  
  output$e.interest <- renderText({
    paste("Total Interest",((input$e.amount *((1+ (input$e.rate/100))^input$e.years)) - input$e.amount),"            EMI : ", ((input$e.amount *((1+ (input$e.rate/100))^input$e.years))/(input$e.years*12)))
    
  })
})

