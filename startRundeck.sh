#!/bin/sh

set -e

BASE_PATH=/home/vcap/app
export RDECK_BASE=${BASE_PATH}/rundeck

echo "-----> Making java available"
export PATH=$PATH:${BASE_PATH}/.java/bin

echo "-----> Starting Rundeck"

ADDITIONAL_ARGS="-Dserver.port=${PORT}"

ADDITIONAL_ARGS="${ADDITIONAL_ARGS} -Dlog4j.configrationFile=$RDECK_BASE/server/config/log4j.properties -Drundeck.jaaslogin=true -Dloginmodule.conf.name=jaas-login.conf -Dloginmodule.name=RDpropertyfilelogin"

JAVA_CALL="${ADDITIONAL_ARGS} \
    -jar $RDECK_BASE/rundeck.war \
    -b $RDECK_BASE \
    --skipinstall \
    -d"

echo "       execute 'java $JAVA_CALL'"
java ${JAVA_CALL}
