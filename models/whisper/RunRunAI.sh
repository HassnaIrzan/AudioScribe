#!/bin/sh
file_name="$1"
JOB_NAME=audio-transcription
runai submit $JOB_NAME \
--backoff-limit 0 \
--image "aicregistry:5000/hirzan:audio-transcription" \
--run-as-user \
--gpu 1 \
--node-type A100 \
--project hirzan \
--large-shm \
--cpu 4 \
-v /nfs:/nfs \
--command \
-- bash ./job.sh $file_name $JOB_NAME