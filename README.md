# Whisper AudioScribe

This repository contains two ways to use OpenAI's Whisper model to transcribe audio files into text: Python-based and Bash-based. The repository also includes a Docker setup to build and run the application in a containerized environment, along with a Bash script to streamline the Docker image creation process.
Furthermore, a Bash script is provided to run the model on a DGX cluster using Runai.

## Features

- **Audio Transcription:** Converts audio files into text using the Whisper model.
- **Dockerized Environment:** Run the application in an isolated and consistent environment with Docker.
- **Automated Setup:** Use the provided Bash script to easily create the Docker image and start the service.

## Getting Started (Run Whisper with bash command)
- **Dockerized Environment:**  Build the docker image using the [creat_docker_im.sh](models/whisper/create_docker_im.sh)
- **Run Whisper model:** Run the transcription by using [job.sh](models/whisper/job.sh)
- 
## Getting Started (Run Whisper with Python3)
- **Install requirements:**  Install all the recommended libraries as specified by the [requirements](models/whisper/requirements.txt) and the [Dockerfile](models/whisper/Dockerfile)
- **Run Whisper model:** Run the model by running [transcribe_audio.py](models/whisper/src/transcribe_audio.py)

Before you begin, ensure you have the following installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Bash: Available by default on most Unix-based systems, including Linux and macOS. Windows users may use Git Bash or WSL.
  

### Cloning the Repository

Clone the repository to your local machine:

```bash
git clone git@github.com:HassnaIrzan/AudioScribe.git
cd whisper-transcription
```
## Contact
For any queries, please reach out to Hassna Irzan at rmaphir@gmail.com

## License
This repository is shared under an [MIT license](https://github.com/HassnaIrzan/InformativeUninformativeFrameClassifier/blob/main/LICENSE)
