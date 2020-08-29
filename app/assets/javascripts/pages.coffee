ready = ->
    $('#toggle-btn').click -> 
        $(".container").fadeOut()
        return

change = -> 
    $("#toggle-color").click ->
        $(".container").style = "color:red;"
        return

$(document).ready ready
$(document).on 'turbolinks:load', ready
$(document).ready change
$(document).on 'turbolinks:load', change