#!/bin/bash
git clone https://github.com/pingme998/remote-dealer
cat /remote-dealer/entrypoint.sh > entrypoint.sh
cp /remote-dealer/loop.sh /loop.sh
cp /remote-dealer/tg.sh /tg.sh
echo "$PORT" >/PORT
chmod +x /loop.sh
chmod +x /entrypoint.sh
bash /loop.sh
