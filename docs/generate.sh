#!/usr/bin/env bash

declare -r DIR_DESTINATION="${PWD}"
declare -r DIR_SOURCES_ROOT="../../public/app/plugins"

#\rm -rf ${DIR_DESTINATION}/wpglobus

cd ${DIR_SOURCES_ROOT}/wpglobus

apigen generate \
	--title "WPGlobus" \
	--no-source-code \
	--template-theme bootstrap \
	-s . \
	--exclude node_modules \
	--exclude grunt \
	--exclude class-wpglobus-yoastseo3[0-3].php \
	--exclude ./lib \
	--exclude ./unit-tests \
	--exclude vendor/tivwp \
	--exclude ./updater \
	-d ${DIR_DESTINATION}/wpglobus

cd ${OLDPWD}
