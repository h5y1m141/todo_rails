@Todo -> class Main
  constructor: () ->
    @controller = new Todo.TaskController()
    @formController = new Todo.TaskFormController()
ready = ->
  todo = new Todo.Main()
  
$(document).ready(ready)
