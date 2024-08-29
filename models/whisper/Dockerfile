FROM nvcr.io/nvidia/pytorch:21.11-py3
# type id in the terminal to get UID and GID

ARG USER_ID=1108 
ARG GROUP_ID=1111
ARG USER=hirzan 


ENV TZ=Europe/London

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN addgroup --gid $GROUP_ID $USER

RUN pip3 install --upgrade pip

RUN pip3 install --upgrade setuptools pip

# install python packages whisper
#RUN pip3 install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git
RUN pip3 install -U openai-whisper

# install ffmpeg
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg

# install rust
RUN pip3 install setuptools-rust

# install requirements from txt file
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

#RUN addgroup --gid $GROUP_ID $USER
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID $USER

WORKDIR /nfs/home/hirzan/projects/audio_transcription/models/whisper

EXPOSE 8888
