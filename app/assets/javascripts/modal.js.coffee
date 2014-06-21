$ ->
  $(".open-modal").click ->
    $('.popover').hide()
    $(".modal-container").show()
    false

  $(".close-modal").click ->
    $(".modal-container").hide()
    $(".popover").hide()
    $(this).hide()