#!/bin/bash

ls ./${APP_FOLDER}/build/outputs/apk/
echo
ls ./${APP_FOLDER}/build/outputs/apk/release/
echo
ls ./${APP_FOLDER}/build/intermediates/apk/

hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/*-release-*.apk -m "${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
