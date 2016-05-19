@Todo -> class TaskFormModel
  constructor: () ->
    @status = 'hide'

  show: () ->
    $.publish('form.show')
    
  hide: () ->
    $.publish('form.hide')

  _update: () ->
    if(@status == 'show')
      @status = 'hide'
    else
      @status = 'show'
