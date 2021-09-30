//
// Created by 邓区 on 2021/9/16.
//
#pragma once

#include "IHttpService.h"
#include <iostream>
#include <stdio.h>
#include <string>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <netdb.h>
#include <stdarg.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/types.h>

#define BUFSIZE 4096
#define URLSIZE 2048
#define INVALID_SOCKET -1
#define __DEBUG__

namespace CHttp {

    class AsyHttpService : public CHttp::IHttpService {
    public:
        AsyHttpService();

        ~AsyHttpService();

        static AsyHttpService *getInstance();

        void debugOut(string fmt, ...);

        int httpGet(string strUrl, string &strResponse);

        int httpPost(string strUrl, string strData, string &strResponse);

//        virtual void init() override;
//
//        virtual void sendRequest(Request &request) override;


    private:
        int httpResquestExec(string strMethod, string strUrl, string strData, string &strResponse);

        string httpHeadCreate(string strMethod, string strUrl, string strData);

        string httpDataTransmit(string strHttpHead, int isSocFd);

        int getPortFromUrl(string strUrl);

        string getIpFromUrl(string strUrl);

        string getParamFromUrl(string strUrl);

        string getHostAddFromUrl(string strUrl);

        int socketFdCheck(const int iSockFd);

        static int m_iSocketFd;
    };
}