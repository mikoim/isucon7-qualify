#!/bin/sh

make build && echo 'build OK'

sudo systemctl stop isubata.golang.service && echo 'stop app1...ok'
ssh app2 sudo systemctl stop isubata.golang.service && echo 'stop app2...ok'
ssh db sudo systemctl stop isubata.golang.service && echo 'stop db...ok'

scp isubata app2:/home/isucon/isubata/webapp/go && echo 'copy app2...ok'
scp isubata db:/home/isucon/isubata/webapp/go && echo 'copy db...ok'

sudo systemctl restart isubata.golang.service && echo 'restart app1...ok'
ssh app2 sudo systemctl restart isubata.golang.service && echo 'restart app2...ok'
ssh db sudo systemctl restart isubata.golang.service && echo 'restart db...ok'

