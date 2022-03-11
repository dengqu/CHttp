cmake_minimum_required(VERSION 3.17)
project(CHttp)

set(CMAKE_CXX_STANDARD 14)

add_executable(CHttp main.cpp URL.h Request.h Response.h IHttpService.h AsyHttpService.cpp AsyHttpService.h Server.cpp Server.h thread/ThreadPool.cpp thread/ThreadPool.h)

file(GLOB INCLUDE_FILES "include/rapidjson/*.h")
install(FILES
        ${INCLUDE_FILES}
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/include/rapidjson)