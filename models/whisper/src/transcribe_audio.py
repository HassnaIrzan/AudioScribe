import whisper
import time
import os
from pathlib import Path
from glob import glob



print("============================= Start =============================")

audio_files = glob("/nfs/home/hirzan/projects/audio_learning/data/Pituitary/Audio/*.wav")

model = whisper.load_model("large-v2")

for audio_file in audio_files:

    start = time.time()

    # print the device of the model
    print("Model device: ", model.device)

    result = model.transcribe(audio=audio_file, word_timestamps=False,
                            append_punctuations="\.。,，!！?？:：”)]}、", language='en', task='transcribe')

    # get audio file name with os.path.basename
    audio_file_name = os.path.basename(audio_file).split(".")[0]
    # save result to txt file
    output_file = "/nfs/home/hirzan/projects/audio_transcription/models/whisper/results/"+audio_file_name+"_transcript.txt"
    with open(output_file, "w") as f:
        f.write(result["text"])

    print("Transcription saved to: ", output_file)

    end = time.time()
    print("Time spent transcribing: ", (end - start)/60, " minutes")

print("============================= Done! =============================")

