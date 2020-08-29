ready = ->
    button = $('#toggle-btn')
    button.click -> 
        if button.html() == "hide text"
            button.empty().append("show text")
            $(".container").fadeOut()
        else
            #button.empty().append("hide text")
            $(".container").show()
    return

tester = ->
    secondButton = $('#toggle-color')
    secondButton.click ->
        $(".container").css("color", "red")
        return

$(document).ready ready
$(document).on 'turbolinks:load', ready
$(document).ready tester
$(document).on 'turbolinks:load', tester