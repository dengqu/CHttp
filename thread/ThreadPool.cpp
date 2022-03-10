//
// Created by 邓区 on 2022/3/10.
//

#include <iostream>
#include "ThreadPool.h"

ThreadPool::ThreadPool(int threadNumber, int maxRequests):m_threadNumber(threadNumber), m_maxRequests(maxRequests),m_stop(false) {
   if (m_threadNumber <= 0 || m_threadNumber > m_maxRequests) throw std::exception();
    for (int i = 0; i < m_threadNumber; ++i) {
        pthread_t pid;
        if (pthread_create(&pid, nullptr,entryFunc,static_cast<void*>(this)) == 0){
            std::cout << "ThreadPool: Create " << i+1 << " thread" << std::endl;
            pthread_detach(pid);
        }
    }
}

ThreadPool::~ThreadPool() {
    {
        std::unique_lock<std::mutex> lock(m_Mutex);
        m_stop = true;
    }
    m_CondVar.notify_all();
}
bool ThreadPool::append(Task task) {
    if (m_workQueue.size() > m_maxRequests){
        std::cout << "ThreadPool: Work queue is full" << std::endl;
        return false;
    }
    {
        std::unique_lock<std::mutex> lock(m_Mutex);
        m_workQueue.emplace(task);
    }
    std::unique_lock<std::mutex> lock(m_Mutex);
    m_workQueue.emplace(task);
}

void *ThreadPool::entryFunc(void *arg) {
    ThreadPool *ptr = static_cast<ThreadPool *>(arg);
    ptr->run();
    return nullptr;
}

void ThreadPool::run() {
    std::unique_lock<std::mutex> lock(m_Mutex);
    while (!m_stop) {
        m_CondVar.wait(lock);
        if (!m_workQueue.empty()) {
            Task task= m_workQueue.front();
            m_workQueue.pop();
            if (task) task();
        }
    }
}