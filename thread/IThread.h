//
// Created by 邓区 on 2021/9/30.
//

#ifndef CHTTP_ITHREAD_H
#define CHTTP_ITHREAD_H

#include "thread"

class IThread {
public:
    IThread(const char *name);

    void start();

private:
    std::thread m_thread;
    static void *threadFunc(void *p);
    char m_name[40];
};


#endif //CHTTP_ITHREAD_H
