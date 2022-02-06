import os

os.system("rc-update add local default")
y = """#!/bin/sh
/usr/bin/Xvfb :99 -ac &
"""
with open("/etc/local.d/Xvfb.start", "w+") as f:
  f.write(y)
os.system("chmod +x /etc/local.d/Xvfb.start")
os.system("rc-update add local default")
