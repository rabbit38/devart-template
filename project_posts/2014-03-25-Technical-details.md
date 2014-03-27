To create the installation Ring the Wifi, we have to build both the hardware part and the software part.

Luckily we already have the Raspberry Pi, so we don't need to build everything from scratch. Also we have Linux, so we can reuse a lot of software like hostapd, dnsmasq, iptables, wifidog, Python and Dart.

Now here is our job:

To change a computer to a wireless router, we need an WiFi adaptor. We tried a lot of solutions after days and nights testing, finally we chose TP-Link tl-wn725n. It works great with Linux driver.

Besides hardware, we also need the software part. Linux config is heavily based on the work we've been done in project WifiPi.

To pick up the signal of "Ring the WiFi", we had to learn the usage of GPIO. GPIO stands for General Purpose I/O. We're lucky enough because now we can program that I/O interface with Python language. We love that so much.

To block the router users from accessing the Internet, we use the project wifidog. Basically it blocks everything after we start wifidog daemon. When the browser intends to visit the websites, it will be redirected to the customized web page, to check if this user is allowed to access Internet.

It's a quite challenge that we need to connect those pages with the electricity wire. Most of the web pages are static, some of them are dynamic. But now we need more advanced pages, which have to be "real time" to know that we have just "Ring the WiFi".

Oh, one more thing, if two or more users is trying to "Ring the WiFi", they have to queue. So when the first user rings, he can access Internet, meanwhile the second user becomes the first one in the queue. All the waiting users' web pages are notified in real time.

KJ
