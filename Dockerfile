FROM ubuntu:latest
WORKDIR /app
RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get install -y python3-dev
RUN apt-get install -y git
RUN git clone -b dev https://github.com/AirportR/FullTclash.git
WORKDIR /app/FullTclash
RUN pip3 install --no-cache-dir -r requirements.txt
RUN chmod 777 ./bin/fulltclash-linux-amd64
CMD ["python3","/app/FullTclash/main.py"]
