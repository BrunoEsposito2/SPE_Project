# Usa un'immagine di base di Linux
FROM ubuntu:latest

# Aggiorna i repository e installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    g++ \
    openjdk-11-jdk 

# Installa i componenti per la compilazione della libreria openCV
RUN apt-get update && apt-get install -y \
    cmake \ 
    wget \
    unzip

# Imposta la variabile globale JAVA_HOME all'interno del SO al jdk-11
RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk && \
    export PATH=$PATH:$JAVA_HOME/bin

# Crea la directory di lavoro
RUN mkdir workspace && \
    cd workspace

# Mappa la directory di lavoro nel container
VOLUME [ "/workspace/SPE_Project" ]

# Scarica l'ultima versione di openCV e la decomprime
RUN cd /workspace && wget -O opencv.zip https://github.com/opencv/opencv/archive/refs/tags/4.9.0.zip && \
    unzip opencv.zip

# Crea una cartella di build della libreria openCV all'interno del progetto
RUN mkdir -p /workspace/SPE_Project/build && cd /workspace/SPE_Project/build

# Esegue la compilazione di openCV all'interno della directory appena creata
RUN cmake /workspace/opencv-4.9.0 && cmake --build .

# Imposta la directory di lavoro
WORKDIR /workspace/SPE_Project

# RUN mv ~/*open-cv*.* /workspace/SPE_Project

# Copia il contenuto del progetto corrente all'interno del container
COPY . .

# Avvia la compilazione del programma C++
RUN ./gradlew assemble