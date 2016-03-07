#!/bin/bash
set -e

cd /opt/bittorrent-tracker
DEBUG=bittorrent-tracker node ./bin/cmd.js &
cd /opt/ginstant
npm run build && DEBUG="instant*,downgrade,unlimited" node server
