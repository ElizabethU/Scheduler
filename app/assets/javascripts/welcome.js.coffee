$ ->

  $(".exec").click ->
    id = $(this).data('exec-id')
    timeslots = $(".timeslot[data-exec-id=#{id}]")
    $('.timeslot').hide()
    timeslots.show()
    $(".exec").removeClass('active')
    $(this).addClass('active')
    return false