# Usa un'immagine di base di Linux
FROM ubuntu:latest

# Aggiorna i repository e installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    g++ \
    openjdk-11-jdk

RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk && \
    export PATH=$PATH:$JAVA_HOME/bin && \
    java -version

RUN mkdir workspace && \
    cd workspace

# Mappa la directory di lavoro nel container
VOLUME [ "/workspace/SPE_Project" ]

COPY . .

RUN ./gradlew assemble

# Imposta la directory di lavoro
WORKDIR /workspace/SPE_Project
