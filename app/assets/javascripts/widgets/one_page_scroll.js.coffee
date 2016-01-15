@Widgets ||= {}

class @Widgets.OnePageScroll

  constructor: ($container, options) ->
    @$container = $ $container

    options ||= {}
    @initialize(options)

  initialize: (options) =>
    @$container.onepage_scroll @_options(options)

  renderPage: (index) =>
    # if index > 1
    #   $(".paralax-bg").addClass("show")
    #   $(".contain-to-grid").addClass("shrink")
    #   # $(".f-topbar-fixed").css(
    #     # "padding-top", "48px")
    # else
    #   $(".paralax-bg").removeClass("show")
    #   $(".contain-to-grid").removeClass("shrink")
    #   # $(".f-topbar-fixed").css(
    #   #   "padding-top", "80px")

  _options: (options) =>

    default_options =
      sectionContainer: ".slide" # sectionContainer accepts any kind of selector in case you don't want to use section
      easing: "ease" # Easing options accepts the CSS3 easing animation such "ease", "linear", "ease-in",
      # "ease-out", "ease-in-out", or even cubic bezier value such as "cubic-bezier(0.175, 0.885, 0.420, 1.310)"
      animationTime: 1000 # AnimationTime let you define how long each section takes to animate
      pagination: true # You can either show or hide the pagination. Toggle true for show, false for hide.
      updateURL: false # Toggle this true if you want the URL to be updated automatically when the user scroll to each page.
      beforeMove: (index) =>
        @renderPage(index)
      afterMove: (index) -> # This option accepts a callback function. The function will be called after the page moves.
      loop: false # You can have the page loop back to the top/bottom when the user navigates at up/down on the first/last page.
      keyboard: true # You can activate the keyboard controls
      responsiveFallback: 1025 # You can fallback to normal page scroll by defining the width of the browser in which
      # you want the responsive fallback to be triggered. For example, set this to 600 and whenever
      # the browser's width is less than 600, the fallback will kick in.
      direction: "vertical" # You can now define the direction of the One Page Scroll animation. Options available are "vertical" and "horizontal". The default value is "vertical".

    options = $.extend {}, default_options, options