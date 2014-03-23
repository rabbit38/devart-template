import 'dart:html';
import 'dart:convert';

void main() {
    // print("hello, world!");

    // $.getJSON "/api/wifi/queue_status", (data) ->
    //     $("#msg").text(data["msg"]+data["position"])
    //     waiting()

    HttpRequest.getString('/api/wifi/queue_status')
        .then((String responseText) {
            Map data = JSON.decode(responseText);
            if (data["msg"] == "ring_the_bell") {
                print(data["position"]);
                querySelector("#msg").text = "Time for you to ring the bell!";
                waiting();
            } else if (data["msg"] == "queue") {
                print(data["position"]);
                querySelector("#msg").text = "There are ${data['position']} people in the queue. Please wait!";
                waiting();
            }
        })
        .catchError((Error error) {
            print(error.toString());
        });
}


// waiting = () ->
//     $.post "/api/wifi/queue", (data) ->
//         $("#msg").text(data["msg"]+data["position"])
//         if data["msg"] == "online_now"
//             window.location.href = data["redirect"]
//             return
//         waiting()

void waiting() {
    var request = new HttpRequest();
    request.onReadyStateChange.listen((_) {
        if (request.readyState == HttpRequest.DONE && (request.status == 200 || request.status == 0)) {
            Map data = JSON.decode(request.responseText);
            if (data["msg"] == "online_now") {
                print(data["redirect"]);
                window.location.href = data["redirect"];
            } else if (data["msg"] == "ring_the_bell") {
                print(data["position"]);
                querySelector("#msg").text = "Time for you to ring the bell!";
                waiting();
            } else if (data["msg"] == "queue") {
                print(data["position"]);
                querySelector("#msg").text = "There are ${data['position']} people in the queue. Please wait!";
                waiting();
            }
        }
    });

    var url = '/api/wifi/queue';
    request.open('POST', url);
    request.send();
}

