@Todo -> class TitleValidator
  constructor: () ->

  validLength: (str) ->
    d = new $.Deferred
    if str.length < 10
      d.resolve()
    else
      d.reject('Error!!')

    return d.promise()
