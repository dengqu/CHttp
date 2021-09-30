cmake_minimum_required(VERSION 3.20)
project(CHttp)

set(CMAKE_CXX_STANDARD 14)

add_executable(CHttp main.cpp URL.h Request.h Response.h IHttpService.h AsyHttpService.cpp AsyHttpService.h thread/IThread.cpp thread/IThread.h)
