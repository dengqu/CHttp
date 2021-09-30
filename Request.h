//
// Created by 邓区 on 2021/9/16.
//
#pragma once

#include "URL.h"

namespace CHttp {
    using namespace std;
    enum Method {
        GET,
        POST
    };

    struct Request {
        Request() {

        }

        URL url;
        Method method;
    };


}