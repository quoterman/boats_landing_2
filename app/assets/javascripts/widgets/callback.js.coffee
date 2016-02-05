@Widgets ||= {}

class @Widgets.Callback

  constructor: ($container, options) ->
    @$container = $ $container
    options ||= {}
    @initialize(options)

  initialize: (options) =>
    @$container.on
      opened: ->
        $('body').addClass('stop-scrolling')
        $('html').css('overflow', 'hidden')
      closed: ->
        $('body').removeClass('stop-scrolling')
        $('html').css('overflow', 'initial')


    # @$container.find('.js-form-modal').each (index, container) =>
    #   new Widgets.FormShowInput container


    #hack to close reveal modal window
    width = document.body.clientWidth

    if width < 1025
      $(document).on "tap touchstart", ".reveal-modal-bg", ->
        $("[data-reveal]").foundation "reveal", "close"
