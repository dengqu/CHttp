//
// Created by 邓区 on 2021/9/16.
//
#pragma once

#include <iostream>

namespace CHttp {
    using namespace std;

    struct URL {
        URL() {

        }

        //协议 ftp ntp http https
        string protocol;
        //域名
        string host;
        //端口
        int port;
    };
}

