//
// Created by 邓区 on 2022/3/10.
//

#ifndef CHTTP_THREADPOOL_H
#define CHTTP_THREADPOOL_H

#include <queue>
#include <mutex>

class ThreadPool {
public:
    typedef std::function<void(void)> Task;

    explicit ThreadPool(int threadNumber = 5,int maxRequests = 10000);
    ~ThreadPool();
    bool append(Task task);

private:
    static void *entryFunc(void *arg);
    void run();

private:
    int m_threadNumber; //线程数
    int m_maxRequests; //最大任务数
    std::queue<Task> m_workQueue; //任务队列
    std::mutex m_Mutex; //互斥量
    std::condition_variable m_CondVar; //条件变量
    bool m_stop; //线程池是否执行
};


#endif //CHTTP_THREADPOOL_H
