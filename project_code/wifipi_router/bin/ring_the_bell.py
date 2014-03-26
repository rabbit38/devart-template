#!/usr/bin/env python

import sys
import os
import urllib
import urllib2
import datetime
import time

try:
    import RPi.GPIO as GPIO
except:
    GPIO = None

if GPIO:
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(11, GPIO.IN)

#sys.path.append(os.path.dirname(os.path.abspath(__file__)))
#sys.path.append(os.path.dirname(os.path.abspath(__file__)) + '/../vendor')

#os.chdir(os.path.dirname(os.path.abspath(__file__)))


if __name__ == "__main__":
    i = 0
    last_input_value = 0
    while True:
        time.sleep(0.001)
        input_value = GPIO.input(11)
        i += 1
        if input_value != last_input_value:
            last_input_value = input_value
            if i > 50:
                print i, input_value
                urllib2.urlopen("http://127.0.0.1/api/wifi/tigger")
                time.sleep(10)
            i = 0
