@Todo -> class TitleValidator
  constructor: () ->

  validLength: (str) ->
    if str.length < 10
      $.publish('flash:hide')
    else
      $.publish('flash:alert', [str])
