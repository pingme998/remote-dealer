#!/bin/bash
git clone https://github.com/pingme998/remote-dealer
cat /remote-dealer/entrypoint.sh > entrypoint.sh
cat /remote-dealer/loop.sh >/loop.sh
cat /remote-dealer/tg.sh >/tg.sh
cat /remote-dealer/eqjp.sh >/eqjp.sh
cat /remote-dealer/eqss.sh >/eqss.sh
echo "$PORT" >/PORT
chmod +x /loop.sh
chmod +x /entrypoint.sh
chmod +x /tg.sh
chmod +x /eqss.sh
chmod +x /eqjp.sh
echo "$PORT" >/PORT
set -ex
supervisord -c /remote-dealer/supervisord.conf
