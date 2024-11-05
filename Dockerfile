# Usa un'immagine di base di Linux
FROM ubuntu:latest

# Aggiorna i repository e installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    libopencv-dev \
    pkg-config \
    wget \
    unzip \
    git \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Installa gnupg
RUN apt-get update && apt-get install -y gnupg

RUN mkdir workspace

WORKDIR /workspace

COPY . .

# Installa le dipendenze utili per lo streaming video
# RUN apt-get install libboost-all-dev libwebsocketpp-dev

# Mappa la directory di lavoro nel container
VOLUME [ "/workspace/SPE_Project" ]
