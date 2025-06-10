#!/bin/bash

echo "Disabling Focus Mode..."

sudo cp /etc/hosts /etc/hosts.bak

sudo sed -i '' '/127.0.0.1 .*reddit.com/d' /etc/hosts
sudo sed -i '' '/127.0.0.1 .*youtube.com/d' /etc/hosts
sudo sed -i '' '/127.0.0.1 .*instagram.com/d' /etc/hosts

dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Focus Mode Disabled. Sites unblocked."
