$ ->
  $('.timeslot').click (e)->
    x = e.clientX
    y = e.clientY
    $('.background').show()
    $('.claimbox').hide()
    claimbox = $(this).siblings(".claimbox")
    cell = ($('td:first'))
    console.log(cell)
    xOffset = claimbox.width()/2 - cell.width()/2
    yOffset = claimbox.height()
    console.log(xOffset, yOffset)
    claimbox.css({
      marginLeft: -xOffset - 10,
      marginTop: -yOffset - 50
    })
    claimbox.show()
    return false

