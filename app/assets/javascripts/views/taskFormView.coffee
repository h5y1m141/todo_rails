@Todo -> class TaskFormView
  constructor: () ->
    @$taskForm = $('#task-form')
    @$taskForm.hide()
    $.subscribe 'form.show', (event) =>
      @$taskForm.show()
    $.subscribe 'form.hide', (event) =>
      @hide()  

  show: () ->
    @$taskForm.show()

  hide: () ->    
    @$taskForm.hide()
    
  fetchFormValues: () ->
    return {
      title: @$taskForm.find('#title').val(),
      content: @$taskForm.find('#content').val()
    }
