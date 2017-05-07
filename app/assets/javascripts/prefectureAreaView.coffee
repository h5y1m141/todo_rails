@Todo -> class PrefectureAreaView
  constructor: () ->
    @$areaView = $('#area')
    $.subscribe 'prefectures.loaded', (event, items) =>
      @show(items)

  show: (items) ->
    elements = []
    items.forEach (item, index) ->
      elements.push('<p>' + item.name + '</p>')
    @$areaView.append elements