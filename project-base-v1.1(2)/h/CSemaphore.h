//
// Created by os on 6/26/22.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H


#include "CThread.h"
#include "../h/new.h"

class CSemaphore {
private:
    overrideNew;
    overrideDelete;

    int val;
    CThread *headBlck = nullptr, *tailBlck = nullptr;

    void block();
    CThread* unblock();
public:
    CSemaphore(unsigned int init = 1): val(init){};
    int wait();
    int signal();

    static int open(CSemaphore** handle, unsigned int);
    static int close(CSemaphore* handle);

};


#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
