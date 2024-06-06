# CMake generated Testfile for 
# Source directory: /workspace/opencv-4.9.0/modules/imgproc
# Build directory: //modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgproc "//bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "//test-reports/accuracy" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;13;ocv_define_module;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;0;")
add_test(opencv_perf_imgproc "//bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml")
set_tests_properties(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "//test-reports/performance" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;13;ocv_define_module;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;0;")
add_test(opencv_sanity_imgproc "//bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "//test-reports/sanity" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;13;ocv_define_module;/workspace/opencv-4.9.0/modules/imgproc/CMakeLists.txt;0;")
