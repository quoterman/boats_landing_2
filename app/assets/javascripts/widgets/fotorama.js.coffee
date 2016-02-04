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
      minwidth: '1440'
      minheigth: '900'
      width: '100%'
      height: '100%'
      fit: "cover"
      nav: false
      arrows: false
