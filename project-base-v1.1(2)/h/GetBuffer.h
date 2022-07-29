//
// Created by os on 6/30/22.
//

#ifndef SEM_TH_EXIT_GETBUFFER_H
#define SEM_TH_EXIT_GETBUFFER_H
#include "new.h"
#include "CSemaphore.h"
#include "syscall_c.h"

class GetBuffer {

private:
    int cap;
    char *buffer;
    int head, tail;
    int space;
    CSemaphore* itemAvailable;

public:
    static GetBuffer* getBuffer;
    overrideArrNew;
    overrideNew;
    overrideArrDelete;
    overrideDelete;
    GetBuffer(int _cap);
    ~GetBuffer();

    void put(char val);
    char get();

    int getCnt();

};


#endif //SEM_TH_EXIT_GETBUFFER_H
