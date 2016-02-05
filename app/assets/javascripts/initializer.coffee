$ ->
  $(document).foundation

  $('.slides').each (index, container) ->
    new Widgets.OnePageScroll container

  $('.fotorama').each (index, container) ->
    new Widgets.Fotorama container

  $(".callback-modal").each (index, container) ->
    new Widgets.Callback container