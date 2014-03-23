import 'dart:html';
import 'dart:convert';

void main() {
    // print("hello, world!");
    //querySelector("#msg").text = "Hello world!";

    // $.getJSON "/api/wifi/queue", (data) ->
    //     $("#msg").text(data["msg"]+data["position"])
    //     waiting()

    var path = '/api/wifi/queue';
    HttpRequest.getString(path)
        .then((String fileContents) {
            print(fileContents.length);
            waiting();
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
            // data saved OK.
            Map data = JSON.decode(request.responseText); // parse response text
            if (data["msg"] == "online_now") {
                print(data["position"]);
                print(data["redirect"]);
                waiting();
            }
        }
    });

    var url = '/api/wifi/queue';
    request.open('POST', url);
    request.send();
}

