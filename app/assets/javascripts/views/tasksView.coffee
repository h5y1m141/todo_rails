@Todo -> class TasksView
  constructor: () ->
    @$tasksView = $('#tasks')
    $.subscribe 'tasks.loaded', (event, items) =>
      @show(items)

  show: (items) ->
    elements = []
    items.forEach( (item, index) ->
      elements.push("<li data-task-id=#{item.id} class='task__detail' >" + item.title + '</li>')
    )
    @$tasksView.append(elements)
    @$tasksView.show()
    
  hide: () ->
    @$tasksView.hide()
