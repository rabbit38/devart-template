$ ->
    waiting = () ->
        $.post "/api/wifi/queue", (data) ->
            alert data["msg"]+data["position"]
            waiting()

    $.getJSON "/api/wifi/queue", (data) ->
        alert data["position"]
        waiting()

