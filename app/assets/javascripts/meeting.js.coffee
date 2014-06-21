$ ->
  $('.timeslot').click (e)->
    x = e.clientX
    y = e.clientY
    $('.background').show()
    $('.claimbox').hide()
    claimbox = $(this).siblings(".claimbox")
    width = claimbox.width()
    height = claimbox.height()
    console.log(width, height)

    claimbox.show()
    return false

