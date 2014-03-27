# Ring The WiFi

## Authors
- LIU Zhen, rabbit38@gmail.com
- KAN Jia, kernel1983@gmail.com

## Description
"Ring The WiFi" is an installation about Internet. When people knock door, someone will open the door because they hearing the knocking. Internet is very generally today, people can get Internet at home, in the coffee shop or office... It's like a greatest magic, we never see and touch it, but it always around of us. So, our idea is let people hearing the sounds of Internet that make them to feel the Internet. 

We created a Triangle WiFi and showed it in one of GDG Activity, when people ring the Triangle WiFi, they can get the Internet and hear the ring in the same time. In this test, most people think that's fun. Through this way, they think they felt the Internet.

## Dart Example Code
```
import 'dart:html';
import 'dart:convert';

void main() {
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
```
## Links to External Libraries

[WifiPi project](https://github.com/WifiPi/router "WifiPi")

[Tornadoweb](http://www.tornadoweb.org/ "Tornado")

[Raspbian](http://www.raspbian.org/ "Raspbian")

## Images & Videos

![Ring the WiFi](project_images/cover.jpg?raw=true "Ring the WiFi")

https://www.youtube.com/watch?v=OBHxqFjtNug
