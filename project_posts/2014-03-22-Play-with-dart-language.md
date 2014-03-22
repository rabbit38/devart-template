After we create the wireless router based on WifiPi, we have a great platform to code almost anything.

## Python and Tornado
The base part of this project is done in python. We use tornadoweb framework.

Also our system use **wifidog** to control the wireless clients(mobile phone and laptop) accessing the Internet.

Wifidog is an important part of the system. However, it requires the auth server which we need to implement. It allow us to customize. We will do it in python.

## Dart language
It also took us some time to study Dart language. We also spend half a day to finish those code(first time to use Dart)

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

It works!