//
// Created by os on 6/30/22.
//

#ifndef SEM_TH_EXIT_PUTBUFFER_H
#define SEM_TH_EXIT_PUTBUFFER_H

#include "new.h"
#include "CSemaphore.h"
#include "syscall_c.h"

class PutBuffer {
private:
        int cap;
        char *buffer;
        int head, tail;
        int item;
        CSemaphore* spaceAvailable;

public:
        static PutBuffer* putBuffer;
        overrideArrNew;
        overrideNew;
        overrideArrDelete;
        overrideDelete;
        PutBuffer(int _cap);
        ~PutBuffer();

        void put(char val);
        char get();

        int getCnt();

};


#endif //SEM_TH_EXIT_PUTBUFFER_H
