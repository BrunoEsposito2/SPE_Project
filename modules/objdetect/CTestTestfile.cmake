# CMake generated Testfile for 
# Source directory: /workspace/opencv-4.9.0/modules/objdetect
# Build directory: //modules/objdetect
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_objdetect "//bin/opencv_test_objdetect" "--gtest_output=xml:opencv_test_objdetect.xml")
set_tests_properties(opencv_test_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Accuracy" WORKING_DIRECTORY "//test-reports/accuracy" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;2;ocv_define_module;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;0;")
add_test(opencv_perf_objdetect "//bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml")
set_tests_properties(opencv_perf_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Performance" WORKING_DIRECTORY "//test-reports/performance" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;2;ocv_define_module;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;0;")
add_test(opencv_sanity_objdetect "//bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Sanity" WORKING_DIRECTORY "//test-reports/sanity" _BACKTRACE_TRIPLES "/workspace/opencv-4.9.0/cmake/OpenCVUtils.cmake;1795;add_test;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;/workspace/opencv-4.9.0/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;2;ocv_define_module;/workspace/opencv-4.9.0/modules/objdetect/CMakeLists.txt;0;")
