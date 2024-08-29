# Whisper AudioScribe

Welcome to the Whisper AudioScribe repository! This project offers two approaches to transcribing audio files into text using OpenAI's Whisper model: one based on Python and the other on Bash. Additionally, it includes a Docker setup for running the application in a containerized environment and a Bash script for easy Docker image creation. For those utilizing a DGX cluster, a Bash script is also provided to run the model using Runai.

## Features

- **Audio Transcription:** Convert audio files into text using OpenAI's Whisper model.
- **Dockerized Environment:** Leverage Docker to run the application in an isolated and consistent environment.
- **Automated Setup:** Simplify the Docker image creation and service startup with the provided Bash script.
- **Cluster Execution:** Run the Whisper model on a DGX cluster using the integrated Runai script.

## Getting Started

### Running Whisper with Bash Commands

1. **Build the Docker Image:**
   - Use the provided script to build the Docker image:
     ```bash
     bash models/whisper/create_docker_im.sh
     ```

2. **Run the Whisper Model:**
   - Start the transcription process using:
     ```bash
     bash models/whisper/job.sh
     ```

### Running Whisper with Python3

1. **Install Requirements:**
   - Install all necessary libraries as specified in the [requirements.txt](models/whisper/requirements.txt) and the [Dockerfile](models/whisper/Dockerfile):
     ```bash
     pip install -r models/whisper/requirements.txt
     ```

2. **Run the Whisper Model:**
   - Execute the Python script to start transcribing:
     ```bash
     python3 models/whisper/src/transcribe_audio.py
     ```

## Prerequisites

Before you start, ensure you have the following installed on your system:

- **Docker:** [Install Docker](https://docs.docker.com/get-docker/)
- **Bash:** Typically available by default on most Unix-based systems, including Linux and macOS. Windows users can use Git Bash or WSL.

## Cloning the Repository

To get started, clone the repository to your local machine:

```bash
git clone git@github.com:HassnaIrzan/AudioScribe.git
cd AudioScribe
```
## Contact
For any queries, please reach out to Hassna Irzan at rmaphir@gmail.com

## License
This repository is shared under an [MIT license](https://github.com/HassnaIrzan/InformativeUninformativeFrameClassifier/blob/main/LICENSE)
