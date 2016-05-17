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
  _request: (params) ->
    deferred = $.ajax(params)
    return deferred.promise()
