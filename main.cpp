#include <iostream>
#include "IHttpService.h"
#include "AsyHttpService.h"
#include "Server.h"
void aaa(CHttp::IHttpService *service) {
    CHttp::Request request;
    CHttp::URL url;
    url.host = "www.baidu.com";
    request.url = url;
    //service->init();
    //service->sendRequest(request);
}
using namespace std;
using namespace CHttp;
int main() {
    std::cout << "Hello, World!" << std::endl;
//    CHttp::AsyHttpService service = CHttp::AsyHttpService();
//    aaa(&service);
    AsyHttpService *http = AsyHttpService::getInstance();

    //string url = "http://163.177.151.109";
    string url = "http://47.74.94.1:8080/carServer/ConfigController/getCdnConfig";

    string return_msg;
    if (http->httpGet(url , return_msg))
    {
        cout << "response = " << return_msg <<endl;
    }
    return 0;
}


