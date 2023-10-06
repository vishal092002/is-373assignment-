FROM python:3.12.0a1-buster

RUN apt-get update &&\
    adduser --disabled-password --gecos '' myuser

WORKDIR /home/myuser

COPY --chown=myuser:myuser . .

RUN pip install -r requirements.txt

CMD ["python", "main.py"]

ENV QR_CODE_IMAGE_DIRECTORY='qrcode'
ENV QR_CODE_DEFAULT_URL='https://github.com/vishal092002?tab=repositories'
ENV QR_CODE_DEFAULT_FILE_NAME='github.png'
