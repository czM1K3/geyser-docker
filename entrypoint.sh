#!/bin/bash

if id "$UID" &>/dev/null; then
	echo User exists
else
	groupadd -g $GID runners
	useradd runner -u $UID -g $GID -m -s /bin/bash
fi

cd /data
runuser -u runner -- java -jar Geyser-Standalone.jar
