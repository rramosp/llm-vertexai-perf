#!/bin/bash

# set the following two if not set in environment

export ENDPOINT=https://145364233285009408.us-east5-615780545876.prediction.vertexai.goog/v1/projects/615780545876/locations/us-east5/endpoints/145364233285009408:rawPredict
export LOCUST_USERS=100
export LOCUST_RUN_TIME=1m
export LOCUST_SPAWN_RATE=10
export LOCUST_HOST=localhost

# ----------- do not edit below this line --------------

export LOCUST_LOCUSTFILE=locustfile.py
export LOCUST_AUTOSTART=true
export LOCUST_AUTOQUIT=5

locust

