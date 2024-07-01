# Usa un'immagine di base di Linux
FROM brunoesposito2/ubuntu_opencv_build

RUN mkdir /workspace

WORKDIR /workspace

COPY . .

RUN ./gradlew buildCMake