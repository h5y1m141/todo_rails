ready = ->

  $('#prefectures').on 'click', ->
    hostname = window.location.hostname
    protocol = window.location.protocol
    port =  window.location.port
    rootURL = "#{protocol}//#{hostname}:#{port}"

    params =
      url: rootURL + '/api/prefectures.json'
      method: 'GET'
    $.ajax(params).done (response) ->
      elements = []
      response.prefectures.forEach((item, index) ->
        elements.push('<p>' + item.name + '</p>')
      )
      $('#area').append(elements)

$(document).ready(ready)