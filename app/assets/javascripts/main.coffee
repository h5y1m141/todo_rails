@Todo -> class Main
  constructor: () ->
    @controller = new Todo.TaskController()
      
ready = ->
  todo = new Todo.Main()
  
$(document).ready(ready)
