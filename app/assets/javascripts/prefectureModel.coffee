@Todo -> class PrefectureModel
  constructor: () ->
    hostname = window.location.hostname
    protocol = window.location.protocol
    port =  window.location.port
    this.rootURL = "#{protocol}//#{hostname}:#{port}"

  index: () ->
    params = {
      url: this.rootURL + '/api/prefectures.json',
      method: 'GET'
    }
    @_request(params).done (response) =>
      $.publish('prefectures.loaded', [response.prefectures]);

  _request: (params) ->
    return $.ajax(params)
