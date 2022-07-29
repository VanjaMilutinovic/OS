//
// Created by os on 6/30/22.
//

#include "../h/PutBuffer.h"
PutBuffer* PutBuffer::putBuffer = nullptr;

PutBuffer::PutBuffer(int _cap) :cap(_cap + 1), head(0), tail(0) {
    buffer = (char*) MemoryAllocator::getInstance().allocate(cap*sizeof (char));
    item = 0;
    sem_open(&spaceAvailable, cap);
}

PutBuffer::~PutBuffer() {
    mem_free(buffer);
    sem_close(spaceAvailable);
}

void PutBuffer::put(char val) {
    spaceAvailable->wait();

    buffer[tail] = val;
    tail = (tail + 1) % cap;

    item++;
}

char PutBuffer::get() {
    if(item<=0) return '\0';
    else item--;

    char ret = buffer[head];
    head = (head + 1) % cap;

    spaceAvailable->signal();
    return ret;
}

int PutBuffer::getCnt() {
    int ret;

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }


    return ret;
}