#!/usr/bin/env bash

export JRE_URL=https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz
#export RUNDECK_DIST_URL="https://repo1.maven.org/maven2/org/rundeck/rundeck/${RUNDECK_VERSION}/"
export RUNDECK_WAR="rundeckpro-enterprise-${RUNDECK_VERSION}.war"
export RUNDECK_DIST_URL="https://packagecloud.io/pagerduty/rundeckpro/packages/java/com.rundeck.enterprise/${RUNDECK_WAR}/artifacts/${RUNDECK_WAR}/download"
#export RUNDECK_WAR="rundeck-${RUNDECK_VERSION}.war"

