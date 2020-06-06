#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT="${BIN_DIR}/.."
PASSWORD=`cat ${PROJECT_ROOT}/publish_password.txt`

cd "${PROJECT_ROOT}"
rsync -P -avcl --delete-after build/ med.meka.rs:/usr/cbsd/jails-data/nginx-data/usr/local/www/med.meka.rs/
rsync -P -avcl --delete-after --exclude=.git* --exclude=__pycache__ --exclude=Makefile --exclude=ansible --exclude=build --exclude=cbsd.conf --exclude=local_config.py --exclude=*.db --exclude=*.mk --exclude=requirements.yml --exclude=static --exclude=templates --exclude=tests services/backend/ med.meka.rs:/usr/cbsd/jails-data/med-data/usr/home/deploy/repos/med/
"${BIN_DIR}/publish" "${PASSWORD}"
