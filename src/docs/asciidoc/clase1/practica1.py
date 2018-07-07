#!/usr/bin/python3
import requests
import sys
import re
from lxml import html
session_requests = requests.session()
payload = {
  "username": "TELMEX",
  "password": "0783991312",
}
login_url = "http://192.168.5.254/GponForm/LoginForm"
result = session_requests.post(
  login_url,
  data = payload,
  headers = dict(referer="http://192.168.0.154/login.html")
)
url = "http://192.168.5.254/waninfo.html"
result = session_requests.get(
  url,
  headers = {
    "referer": url,
    "DNT": "1"
  }
)
regex = re.compile(r"^sta_entity\[0\] = '(\d+(:(\d|\.)+)+)';",re.MULTILINE)
result = regex.search(result.text)
if result:
  lista = result.group(1).split(":")
  print(lista[2])
else:
  print("0.0.0.0")

