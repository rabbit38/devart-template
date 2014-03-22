
import sys
import os

sys.path.append(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + '/vendor/')

import json

import tornlite
import torndb


settings = {
    #"xsrf_cookies": True,
    "static_path": os.path.join(os.path.dirname(__file__), "static/"),
    "AmazonAccessKeyID": "",
    "AmazonSecretAccessKey": "",
    "email_sender": "",
    "cookie_secret": "",
    "login_url": "/login",
    "debug": False,
}

conn = tornlite.Connection(os.path.join(os.path.dirname(__file__), "test.db"))

from setting_remote import conn_remote
if conn_remote._db is None:
    conn_remote = conn

ring = [conn]