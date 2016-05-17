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
    };
    promise = @_request(params);
    promise.done((response) =>
      $.publish('tasks.loaded', [response ]);
    )

  _request: (params) ->
    deferred = $.ajax(params)
    return deferred.promise()
