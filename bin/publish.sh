#!/bin/sh


export BIN_DIR=`dirname $0`
export PROJECT_ROOT="${BIN_DIR}/.."
. "${PROJECT_ROOT}/services/backend/name.py"
export backend_app_name=${app_name}
. "${PROJECT_ROOT}/services/frontend/name.ini"
export frontend_app_name=${app_name}


cd "${PROJECT_ROOT}"

rsync -P -avcl --delete-after build/ med.meka.rs:/usr/cbsd/jails-data/nginx-data/usr/local/www/med.meka.rs/
