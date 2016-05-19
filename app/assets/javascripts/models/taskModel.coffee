@Todo -> class TaskModel
  constructor: () ->
    hostname = window.location.hostname
    protocol = window.location.protocol
    port =  window.location.port
    this.rootURL = "#{protocol}//#{hostname}:#{port}"
  index: () ->
    params = {
      url: this.rootURL + '/tasks.json',
      method: 'GET'
    }
    @_request(params)
      .done((response) =>
        $.publish('tasks.loaded', [response]);
      )
  show: (id) ->
    params = {
      url: this.rootURL + "/tasks/#{id}.json",
      method: 'GET'
    }
    @_request(params)
      .done((response) =>
        $.publish('task.loaded', [response]);
      )
  create: (_task) ->
    params = {
      url: this.rootURL + "/tasks.json",
      method: 'POST'
      data: _task
    }
    @_request(params)
      .done((response) =>
        if (response)
          $.publish('form.hide')
          result = "タイトル：#{response.title}で作成完了しました"
          $.publish('task:create', [result]);
      )
  _request: (params) ->
    return $.ajax(params)
