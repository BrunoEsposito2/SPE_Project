# SPE Project

Docker build command:

```
docker build -t vscode_opencv_windows .
```

Docker run command:

```
docker run --name vscode_opencv_windows_container -it --rm vscode_opencv_windows
```

C++ Program execution commands (after container running):

```
cd app/build/exe/main/debug && ./app
```

