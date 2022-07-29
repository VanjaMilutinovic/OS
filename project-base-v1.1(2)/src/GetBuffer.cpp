//
// Created by os on 6/30/22.
//

#include "../h/GetBuffer.h"
GetBuffer* GetBuffer::getBuffer = nullptr;
GetBuffer::GetBuffer(int _cap){
    cap=_cap;
    head=0;
    tail=0;
    buffer =(char*) MemoryAllocator::getInstance().allocate(cap*sizeof (char));
    space = cap;
    sem_open(&itemAvailable, 0);
}

GetBuffer::~GetBuffer() {
    mem_free(buffer);
    sem_close(itemAvailable);
}

void GetBuffer::put(char val) {
    if(space>0)space--;
    else return;
    buffer[tail] = val;
    tail = (tail + 1) % cap;

    itemAvailable->signal();
}

char GetBuffer::get() {
    itemAvailable->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    space++;

    return ret;
}

int GetBuffer::getCnt() {
    int ret;

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }


    return ret;
}