#!/bin/bash
git clone https://github.com/pingme998/remote-dealer
cat /remote-dealer/entrypoint.sh > entrypoint.sh
cp /remote-dealer/loop.sh /loop.sh
cp /remote-dealer/tg.sh /tg.sh
cp /remote-dealer/ss.sh /eqjp.sh
cp /remote-dealer/ss.sh /eqss.sh
echo "$PORT" >/PORT
chmod +x /loop.sh
chmod +x /entrypoint.sh
chmod +x /tg.sh
chmod +x /eqss.sh
chmod +x /eqjp.sh
echo "$PORT" >/PORT
set -ex
supervisord -c /remote-dealer/supervisord.conf
