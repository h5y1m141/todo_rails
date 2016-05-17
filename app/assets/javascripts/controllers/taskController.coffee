@Todo -> class TaskController
  constructor: () ->
    @titleView = new Todo.TitleView()
    @contentView = new Todo.ContentView()
    @tasksView = new Todo.TasksView()
    @flashView = new Todo.FlashView()
    @model = new Todo.TaskModel()
    @titleValidator = new Todo.TitleValidator()
    @bindEvent()
    
  bindEvent: () ->
    $('#tasks-list').on 'click', =>
      @model.index()
      
    $('#title').on 'blur', (event) =>
      @titleValidator.validLength(event.target.value)
        .then( () =>
          @flashView.hide()
        )
        .fail( () =>
          @flashView.show event.target.value
        )
            
    $('#content').on 'click', =>
      @model.show()

   
