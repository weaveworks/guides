#!/bin/bash -ex

cd $(dirname $0)

curl -L -s -o weave https://git.io/weave
install -o root -g root -m 0755 weave /usr/bin/
install -o root -g root -m 0644 weave.target weave.service weaveproxy.service /etc/systemd/system/
