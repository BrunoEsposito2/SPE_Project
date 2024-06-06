# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# compile CXX with /usr/bin/c++
CXX_DEFINES = -DOPENCV_ALLOCATOR_STATS_COUNTER_TYPE="long long" -DOPENCV_WITH_ITT=1 -D_USE_MATH_DEFINES -D__OPENCV_BUILD=1 -D__OPENCV_TESTS=1 -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS

CXX_INCLUDES = -I//3rdparty/ippicv/ippicv_lnx/icv/include -I//3rdparty/ippicv/ippicv_lnx/iw/include -I/workspace/opencv-4.9.0/modules/ts/include -I/workspace/opencv-4.9.0/modules/core/include -I/workspace/opencv-4.9.0/modules/imgcodecs/include -I/workspace/opencv-4.9.0/modules/videoio/include -I/workspace/opencv-4.9.0/modules/imgproc/include -I/workspace/opencv-4.9.0/modules/highgui/include -I//modules/core/test -isystem /

CXX_FLAGS =    -fsigned-char -W -Wall -Wreturn-type -Wnon-virtual-dtor -Waddress -Wsequence-point -Wformat -Wformat-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Wsuggest-override -Wno-delete-non-virtual-dtor -Wno-comment -Wimplicit-fallthrough=3 -Wno-strict-overflow -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -O3 -DNDEBUG  -DNDEBUG -std=c++11 -fPIE

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse2.cpp.o_FLAGS = 

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE2;

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse3.cpp.o_FLAGS = 

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse3.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE3;

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.ssse3.cpp.o_FLAGS =  -mssse3 -msse4.1

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.ssse3.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSSE3;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse4_1.cpp.o_FLAGS =  -mssse3 -msse4.1

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse4_1.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_1;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse4_2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.sse4_2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.fp16.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mavx

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.fp16.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=FP16;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_AVX=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mavx

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_AVX=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin256.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin256.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx512_skx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2 -mavx512f -mavx512f -mavx512cd -mavx512f -mavx512cd -mavx512vl -mavx512bw -mavx512dq

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin128.avx512_skx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX512_SKX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1;CV_CPU_COMPILE_AVX_512F=1;CV_CPU_COMPILE_AVX512_COMMON=1;CV_CPU_COMPILE_AVX512_SKX=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin256.avx512_skx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2 -mavx512f -mavx512f -mavx512cd -mavx512f -mavx512cd -mavx512vl -mavx512bw -mavx512dq

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin256.avx512_skx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX512_SKX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1;CV_CPU_COMPILE_AVX_512F=1;CV_CPU_COMPILE_AVX512_COMMON=1;CV_CPU_COMPILE_AVX512_SKX=1

# Custom flags: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin512.avx512_skx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2 -mavx512f -mavx512f -mavx512cd -mavx512f -mavx512cd -mavx512vl -mavx512bw -mavx512dq

# Custom defines: //modules/core/CMakeFiles/opencv_test_core.dir/test/test_intrin512.avx512_skx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX512_SKX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1;CV_CPU_COMPILE_AVX_512F=1;CV_CPU_COMPILE_AVX512_COMMON=1;CV_CPU_COMPILE_AVX512_SKX=1

