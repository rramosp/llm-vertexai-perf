#!/bin/bash

# set the following two if not set in environment
export ENDPOINT_ID=6734693438081466368
export PROJECT_ID=615780545876

export ENDPOINT=https://${ENDPOINT_ID}.us-east5-${PROJECT_ID}.prediction.vertexai.goog/v1/projects/${PROJECT_ID}/locations/us-east5/endpoints/${ENDPOINT_ID}:rawPredict
export LOCUST_USERS=1
export LOCUST_RUN_TIME=1m
export LOCUST_SPAWN_RATE=10
export LOCUST_HOST=localhost

# ----------- do not edit below this line --------------

export LOCUST_LOCUSTFILE=locustfile.py
export LOCUST_AUTOSTART=true
export LOCUST_AUTOQUIT=5

locust

