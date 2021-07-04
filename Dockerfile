# Author Adrian Rupala
FROM python:3.9-alpine
WORKDIR /app
COPY ./requirements.txt ./app.py /app/
RUN pip3 install -r requirements.txt && rm requirements.txt
ENTRYPOINT [ "python3", "/app/app.py" ]
