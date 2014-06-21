$ ->
  $('.timeslot').click ->
    $('.background').show()
    $('.popover').hide()
    popover = $(this).siblings(".popover")
    popover.show()
    return false

