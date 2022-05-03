#!/bin/bash

ls ./${APP_FOLDER}/build/outputs/apk/
ls ./${APP_FOLDER}/build/outputs/apk/release/
ls ./${APP_FOLDER}/build/intermediates/apk/

hub release create -a ./${APP_FOLDER}/build/intermediates/apk/release/*-release.apk -m "v${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
