@Todo -> class TasksView
  constructor: () ->
    @$tasksView = $('#tasks')
    $.subscribe 'tasks.loaded', (event, items) =>
      @show(items)

  show: (items) ->
    elements = []
    items.forEach( (item, index) ->
      elements.push("<tr><td>#{item.title}</td>" + "<td><strong data-task-id=#{item.id} class='task__detail'>詳細表示</strong></td></tr>")
    )
    @$tasksView.append(elements)
    @$tasksView.show()
    
  hide: () ->
    @$tasksView.hide()
