#!/usr/bin/env bash
cd /home/rydz/Project/Portfolio
nohup /home/rydz/.local/bin/node /home/rydz/.local/bin/portfolio-server.mjs > portfolio-server.log 2>&1 &
nohup /home/rydz/bin/cloudflared_fixed --no-autoupdate tunnel --config /home/rydz/.cloudflared/portfolio.yml run portfolio > portfolio.log 2>&1 &
echo "Portfolio server & tunnel started in background."
