//
// Created by 邓区 on 2021/9/30.
//

#include "IThread.h"
#include "iostream"
IThread::IThread(const char *name) {
    strncpy(m_name, name, sizeof(m_name));
}

void IThread::start() {
    m_thread = std::thread(std::bind(&threadFunc, this));
}

void *IThread::threadFunc(void *pParam) {
    std::string fmt = "获取URL端口失败\n";
    std::cout << fmt;
}