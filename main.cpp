#include <iostream>
#include "IHttpService.h"
#include "AsyHttpService.h"
#include "thread/ThreadPool.h"
#include "Server.h"
#include "include/rapidjson/document.h"
#include "include/AIGCJson.h"

class Restult {
public:
    int code;
    AIGC_JSON_HELPER(code);// 注册成员
};

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
        Restult restult;
        aigc::JsonHelper::JsonToObject(restult, return_msg);
        std::cout << "code = " << restult.code << std::endl;
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


