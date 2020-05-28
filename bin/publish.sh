#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT="${BIN_DIR}/.."

cd "${PROJECT_ROOT}"

rsync -P -avcl --delete-after build/ med.meka.rs:/usr/cbsd/jails-data/nginx-data/usr/local/www/med.meka.rs/
