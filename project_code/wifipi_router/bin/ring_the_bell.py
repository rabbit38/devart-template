#!/usr/bin/env python

import sys
import os
import urllib
import urllib2
import datetime

#sys.path.append(os.path.dirname(os.path.abspath(__file__)))
#sys.path.append(os.path.dirname(os.path.abspath(__file__)) + '/../vendor')

#os.chdir(os.path.dirname(os.path.abspath(__file__)))


if __name__ == "__main__":
    data = {}
    urllib2.urlopen("http://127.0.0.1/api/wifi/tigger", urllib.urlencode(data))
