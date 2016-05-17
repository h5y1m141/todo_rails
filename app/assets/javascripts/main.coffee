@Todo -> class Main
  constructor: () ->
    @titleView = new Todo.TitleView()
    @contentView = new Todo.ContentView()
    @tasksView = new Todo.TasksView()
    @model = new Todo.TaskModel()
    @bindEvent()
    
  bindEvent: () ->
    $('#tasks-list').on 'click', =>
      @model.index()
      
    $('#title').on 'click', =>
      @model.show()
      
    $('#content').on 'click', =>
      @model.show()
      
ready = ->
  todo = new Todo.Main()
  
$(document).ready(ready)
  
