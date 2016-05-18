@Todo -> class TaskFormController
  constructor: () ->
    @taskFormModel = new Todo.TaskFormModel()
    @model = new Todo.TaskModel()
    @taskFormView = new Todo.TaskFormView()
    @taskFormModel.hide()
    @bindEvent()

  bindEvent: () ->
    $('#task-new').on 'click', =>
      @taskFormModel.show()

    $('#task-create').on 'click', =>
      values = @taskFormView.fetchFormValues()
      @model.create({ 'task': values })

