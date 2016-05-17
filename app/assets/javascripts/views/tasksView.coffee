@Todo -> class TasksView
  constructor: () ->
    @$tasksView = $('#tasks')
    $.subscribe 'tasks.loaded', (event, items) =>      
      @show(items)

  show: (items) ->
    elements = []
    $.each items, (index, item) ->
      elements.push('<li>' + item.title + '</li>')

    @$tasksView.append(elements)
    @$tasksView.show()
    
  hide: () ->
    @$tasksView.hide()
