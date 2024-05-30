# Usa un'immagine di base di Linux
FROM ubuntu:latest

# Aggiorna i repository e installa le dipendenze necessarie
RUN apt-get update && apt-get install -y \
    g++ \
    openjdk-11-jdk

# Imposta la variabile globale JAVA_HOME all'interno del SO al jdk-11
RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk && \
    export PATH=$PATH:$JAVA_HOME/bin

# Crea la directory di lavoro
RUN mkdir workspace && \
    cd workspace

# Mappa la directory di lavoro nel container
VOLUME [ "/workspace/SPE_Project" ]

# Imposta la directory di lavoro
WORKDIR /workspace/SPE_Project

# Copia il contenuto del progetto corrente all'interno del container
COPY . .

# Avvia la compilazione del programma C++
RUN ./gradlew assemble