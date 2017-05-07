@Todo -> class Main
  constructor: () ->
    @prefectureModel = new Todo.PrefectureModel()
    @prefectureAreaView = new Todo.PrefectureAreaView()

ready = ->
  todo = new Todo.Main()
  $('#prefectures').on 'click', ->
    todo.prefectureModel.index()


$(document).ready(ready)