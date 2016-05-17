@Todo -> class FlashView
  constructor: () ->
    @$flash = $('.flash')
    @$flash.hide()

  show: (message) ->
    @$flash.show()

  hide: () ->
    @$flash.hide()
    
