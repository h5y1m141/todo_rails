@Todo -> class ContentView
  constructor: () ->
    @$content = $('#content')
    $.subscribe 'content.loaded', (event, item) =>
      @render(item)
      
  render: (item) ->
    console.log 'render'
    console.log item.content
