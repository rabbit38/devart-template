$ ->
    waiting = () ->
        $.post "/api/wifi/queue", (data) ->
            $("#msg").text(data["msg"]+data["position"])
            if data["msg"] == "online_now"
                window.location.href = data["redirect"]
                return
            waiting()

    $.getJSON "/api/wifi/queue", (data) ->
        $("#msg").text(data["msg"]+data["position"])
        waiting()

