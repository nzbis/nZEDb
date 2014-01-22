#!/usr/bin/env bash

if [ -e "nZEDbBase.php" ]
then
	export NZEDB_ROOT="$(pwd)"
else
	export NZEDB_ROOT="$(php ../../../../../nZEDbBase.php)"
fi

nano Changelog
cd ${NZEDB_ROOT}
#commit=`git log | grep "^commit" | wc -l`
#commit=`expr $commit + 1`

#sed -i -e "s/\$version=.*$/\$version=\"0.3r$commit\";/"  ${NZEDB_ROOT}/misc/update/nix/tmux/monitor.php
php "${NZEDB_ROOT}/_build/updateVersions.php"

git commit -a


