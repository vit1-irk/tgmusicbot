FROM python:3.9-alpine

COPY requirements.txt ./requirements.txt
COPY tgmusicbot.py ./tgmusicbot.py

RUN python -m pip install -r requirements.txt
RUN rm -rf /root/.cache/pip
RUN apk --no-cache add ffmpeg

ENTRYPOINT [ "python", "tgmusicbot.py" ]

