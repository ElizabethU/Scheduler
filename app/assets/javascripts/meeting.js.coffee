$ ->
  $('.timeslot').click ->
    $('.popover').hide()
    popover = $(this).siblings(".popover")
    popover.show()
    return false

