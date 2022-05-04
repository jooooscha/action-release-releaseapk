#!/bin/bash

hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/*-release-*.apk -m "${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
