#!/bin/sh

inputdir_name="/nfs/home/hirzan/projects/audio_transcription/data/"
file_name="$1"
path_to_file=$inputdir_name$file_name
echo "[INFO] Trascibing the audio file: $file_name"
outputdir_name=$inputdir_name"Transcription/"

whisper $path_to_file --model large --language en --output_dir $outputdir_name


