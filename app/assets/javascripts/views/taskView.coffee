@Todo -> class TaskView
  constructor: () ->
    @$taskView = $('#task')
    @$taskDetail = $('#task-detail')
    @$taskView.hide()
    $.subscribe 'task.loaded', (event, item) =>
      @show(item)

  show: (item) ->
    @_reset()
    elements = []
    elements.push('<li>' + item.title + '</li>')
    elements.push('<li>' + item.content + '</li>')
    @$taskDetail.append(elements)
    @$taskView.show()    

  hide: () ->
    @$taskView.hide()

  _reset: () ->
    return @$taskDetail.empty()    
