judgeTriangle <- function(a, b, c) {
  if (a>0 & b>0 & c>0 & a+b>c & a+c>b & b+c>a) {
    if(a==b & b==c) {
      "equilateral triangle"
    }
    else if(a==b | a==c | b==c) {
      "isosceles triangle"
    }
    else if(a*a+b*b==c*c | a*a+c*c==b*b | b*b+c*c==a*a) {
      "right triangle"
    }
    else {
      "normal triangle"
    }
  }
  else {
    "Illegal Side Length"
  }
}

shinyServer(
  function(input, output) {
    output$text <- renderText({
        a <- reactive({input$a})
        b <- reactive({input$b})
        c <- reactive({input$c})
        judgeTriangle(a(), b() ,c())
      #}
    })
  }
)