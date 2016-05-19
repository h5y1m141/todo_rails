@Todo -> class FlashView
  constructor: () ->
    @$flash = $('.flash')
    @$flash.hide()
    @$taskFlash = $('.task__flash')
    @$taskFlash.hide()

    $.subscribe 'task:create', (event, message) =>
      target = @$taskFlash.find('.task__flash_success')
      @$taskFlash.show()
      @show(target, @$taskFlash, message)

    $.subscribe 'flash:alert', (event, message) =>
      target = @$flash.find(".flash__alert")
      @show(target, @$flash, "#{message}は10文字を超えてます")
    $.subscribe 'flash:info', (event, message) =>
      target = @$flash.find(".flash__info")
      @show(target, @$flash, message)
    $.subscribe 'flash:hide', (event, message) =>
      @hide()
  show: (target, showElement, message) ->
    @_reset(target)
    target.append(message)
    showElement.show()

  hide: () ->
    @$flash.hide()

  _reset: (targetElement) ->
    return targetElement.empty()
