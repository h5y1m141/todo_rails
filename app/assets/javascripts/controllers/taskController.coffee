@Todo -> class TaskController
  constructor: () ->
    @titleView = new Todo.TitleView()
    @contentView = new Todo.ContentView()
    @tasksView = new Todo.TasksView()
    @taskView = new Todo.TaskView()
    @flashView = new Todo.FlashView()
    @model = new Todo.TaskModel()
    @titleValidator = new Todo.TitleValidator()
    @bindEvent()

  bindEvent: () ->
    $('#tasks-list').on 'click', =>
      @model.index()

    $('#title').on 'blur', (event) =>
      @titleValidator.validLength(event.target.value)

    $('#tasks').on 'click', '.task__detail',  (event) =>
      taskID = $(event.target).attr('data-task-id')
      @model.show(taskID)
