cmake_minimum_required(VERSION 3.10)

project(OpenCV_Prova)

set(OpenCV_DIR C:/Users/bruno/Desktop/opencv/build)
find_package(OpenCV REQUIRED)

add_executable(${PROJECT_NAME} src/Main.cpp)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})