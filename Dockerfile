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
    && rm -rf /var/lib/apt/lists/*

# Installa le dipendenze necessarie per Visual Studio Code
RUN apt-get update && apt-get install -y \
    libxkbfile1 \
    xdg-utils \
    && rm -rf /var/lib/apt/lists/*

# Installa libasound2 tramite libasound2t64
RUN apt-get update && apt-get install -y libasound2t64

# Installa gnupg
RUN apt-get update && apt-get install -y gnupg

# Scarica e installa Visual Studio Code
RUN wget -q https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb && \
    dpkg -i vscode.deb && \
    apt-get install -f && \
    rm vscode.deb

RUN mkdir workspace && \
    cd workspace && \
    git clone https://github.com/BrunoEsposito2/SPE_Project.git

# Mappa la directory di lavoro nel container
VOLUME [ "/workspace/SPE_Project" ]

# Imposta la directory di lavoro
WORKDIR /workspace/SPE_Project
