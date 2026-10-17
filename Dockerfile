FROM ubuntu:24.04

WORKDIR /app

COPY Orynbek_Akniyet_info.txt /app/

RUN apt-get update && \
    apt-get install -y --no-install-recommends coreutils && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD ["cat", "/app/Orynbek_Akniyet_info.txt"]
