@Todo -> class Main
  constructor: () ->
    @prefectureModel = new Todo.PrefectureModel()

ready = ->
  todo = new Todo.Main()
  vm = new Vue(
    el: '#prefectureArea',
    components:
      prefecture: Todo.Prefecture
    data:
      prefectureLabel: '都道府県取'
      prefectures: []
    methods:
      click: () ->
        todo.prefectureModel.index().done (response) =>
          for prefecture, index in response.prefectures
            @prefectures.push(prefecture)
  )

$(document).ready(ready)
