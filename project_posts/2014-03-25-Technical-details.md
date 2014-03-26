To create the installation Ring the Wifi, we have to build both the hardware part and the software part.

Luckily we already have the Raspberry Pi, so we don't need to build everything from scratch. Also we have Linux, so we can reuse a lot of software like hostapd, dnsmasq, iptables, wifidog, Python and Dart.

Now here is our own job:

To change a computer to a wireless router, we need an WiFi adaptor. We tried a lot of solutions after days and nights testing, finally we chose TP-Link tl-wn725n. It works great with Linux driver.

Besides hardware, we also need the software part. Linux config is heavily based on the work we've been done in project WifiPi.

To pick up the singal of "Ring the WiFi", we had to learn the usage of GPIO. GPIO stands for General Purpose I/O. We're lucky enough because now we can program that I/O interface with Python language. We love that so much.

To block the router users from accessing the Internet, we use the project wifidog. Basicly it block everything after we started wifidog daemon. When the browser is intend to visit the web sites, it will be redirect to the customized web page, to check if this user is allowed to access Internet.

It's quite challage to connect those page with the electricity wire. Most of the web page are static, some of them are dynmaic. But now we need the to be more advance, they have to be "real time" to know that we have just "Ring the WiFi".

Oh, one last thing, if more than one users is trying to "Ring the WiFi", they have to queue. So when the first user rings, he can access Internet, meanwhile the second user became the first one in the queue. All the waiting users' web page need to be notified in real time.

That's a great magic show!

KJ