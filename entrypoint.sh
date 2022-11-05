#!/bin/bash

hub release create -a ./${APP_FOLDER}/release/*-release.apk -m "${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
