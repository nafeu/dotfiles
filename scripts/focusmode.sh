#!/bin/bash

BLOCK_LIST=(
  "www.reddit.com"
  "reddit.com"
  "www.youtube.com"
  "youtube.com"
  "www.instagram.com"
  "instagram.com"
)

echo "Enabling Focus Mode..."

for site in "${BLOCK_LIST[@]}"; do
  if ! grep -q "$site" /etc/hosts; then
    echo "127.0.0.1 $site" | sudo tee -a /etc/hosts > /dev/null
  fi
done

dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Focus Mode Enabled. Sites blocked."
