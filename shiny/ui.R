shinyUI(pageWithSidebar(
  headerPanel("Triangle Judger"),
  sidebarPanel(
    h5('Doc: This is a online judger which can determine the type of triangle with sides length given.'),
    h5('Input length of the three sides: '),
    numericInput('a', 'Side A', 10),
    numericInput('b', 'Side B', 10),
    numericInput('c', 'Side C', 10)
    #submitButton('Check')
    #actionButton("checkButton", "Check")
  ),
  mainPanel(
    h5('This triangle is : '),
    textOutput('text')
  )
))


