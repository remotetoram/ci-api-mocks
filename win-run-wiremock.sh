#!/bin/bash

SCRIPTFILE=$(readlink -f "$0")
BASEPATH=$(dirname "$SCRIPTFILE")

if [ -z $PORT ]; then
  PORT=8080
fi

if [ -z $WIREMOCK_OPTS ]; then
  WIREMOCK_OPTS=""
fi

WIREMOCK_OPTS+=" --port $PORT"

java $JAVA_OPTS \
  --class-path "./libs/slf4j-simple.jar;./libs/wiremock-jre8-standalone.jar" \
  com.github.tomakehurst.wiremock.standalone.WireMockServerRunner \
  $WIREMOCK_OPTSa
