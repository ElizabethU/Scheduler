$ ->
  $(".open-modal").click ->
    $('.claimbox').hide()
    $(".modal-container").show()
    false

  $(".close-modal").click ->
    $(".modal-container").hide()
    $(".claimbox").hide()
    $(this).hide()