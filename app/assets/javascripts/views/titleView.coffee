@Todo -> class TitleView
  constructor: () ->
    @$title = $('#title')
    $.subscribe 'title.loaded', (event, item) =>
      @render(item)
      
  render: (item) ->
    console.log 'render'
    console.log item.title
    
