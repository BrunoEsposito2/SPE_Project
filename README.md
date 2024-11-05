# SPE Project

Docker build command:

```
docker build -t streaming_opencv_windows .
```

Docker run command:

```
docker run -p 5555:5555 -v /video:/video --name streaming_opencv_windows_container -it --rm streaming_opencv_windows
```

List of commands to execute the C++ program:

```
apt install libboost-all-dev libwebsocketpp-dev
cmake . && cmake --build .
./OpenCV_Prova
```