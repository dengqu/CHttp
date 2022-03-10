#include <iostream>
#include "IHttpService.h"
#include "AsyHttpService.h"
#include "thread/ThreadPool.h"
#include "Server.h"

void aaa(CHttp::IHttpService *service) {
    CHttp::Request request;
    CHttp::URL url;
    url.host = "www.baidu.com";
    request.url = url;
    //service->init();
    //service->sendRequest(request);
}

std::function<void()> bbb() {
    CHttp::AsyHttpService *http = CHttp::AsyHttpService::getInstance();
    std::string url = "http://47.74.94.1:8080/carServer/ConfigController/getCdnConfig";
    std::string return_msg;
    if (http->httpGet(url, return_msg)) {
        std::cout << "response = " << return_msg << std::endl;
    }
}

using namespace std;
using namespace CHttp;

int main() {
    std::cout << "Hello, World!" << std::endl;
    ThreadPool pool(3);
    pool.append(bbb());
    return 0;
}


