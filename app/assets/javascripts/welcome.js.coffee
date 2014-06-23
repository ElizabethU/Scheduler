$ ->

  $(".exec").click ->
    $('.background').show()
    $('.claimbox').hide()
    $(".exec").parent().removeClass("selected")
    $(this).parent().addClass("selected")
    id = $(this).data('exec-id')
    timeslots = $(".timeslot[data-exec-id=#{id}]")
    $('.timeslot').hide()
    timeslots.show()
    $(".exec").removeClass('active')
    $(this).addClass('active')
    return false

  $(".close-icon").click ->
    $('.claimbox').hide()
