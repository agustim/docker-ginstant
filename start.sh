#!/bin/bash
set -e

cd /opt/bittorrent-tracker
npm install
DEBUG=bittorrent-tracker node ./bin/cmd.js &
cd /opt/ginstant
npm install
npm run build && DEBUG="instant*,downgrade,unlimited" node server
