cmake_minimum_required(VERSION 3.17)
project(CHttp)

set(CMAKE_CXX_STANDARD 14)

add_executable(CHttp main.cpp URL.h Request.h Response.h IHttpService.h AsyHttpService.cpp AsyHttpService.h Server.cpp Server.h thread/ThreadPool.cpp thread/ThreadPool.h)
