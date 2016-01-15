@Widgets ||= {}

class @Widgets.Fotorama

  constructor: (container, options) ->
    @$container = $ container
    @initialize()

  initialize: =>
    @$container.fotorama
      autoplay: true
      autoplay: 6000
      transition: 'crossfade'
      # width: '100%'
      heigth: '100%'
      ratio: '16/9'
