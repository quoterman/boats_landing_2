$ ->
  $(document).foundation

  $('.slides').each (index, container) ->
    new Widgets.OnePageScroll container

  $('.fotorama').each (index, container) ->
    new Widgets.Fotorama container