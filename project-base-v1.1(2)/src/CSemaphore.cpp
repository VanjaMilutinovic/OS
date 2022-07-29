//
// Created by os on 6/26/22.
//

#include "../h/CSemaphore.h"

int CSemaphore::wait() {
    if(--val<0) {
        block();
        CThread::yield();
    }
    return 0;
}

int CSemaphore::signal() {
    if(++val <= 0) {
        CThread *t = unblock();
        if(t) {
            Scheduler::getInstance().put(t);
            return 0;
        }
        else
            return -1;
    }
    return 0;
}

void CSemaphore::block() {//uvek blokira running
    CThread::running->status = CThread::BLOCKED;

    if(headBlck== nullptr){
        headBlck=tailBlck=CThread::running;
        CThread::running->next= nullptr;
        return;
    }
    else{
        tailBlck->next=CThread::running;
        tailBlck=tailBlck->next;
        tailBlck->next= nullptr;
    }

}

CThread *CSemaphore::unblock() {
    if(headBlck==nullptr)return nullptr;

    if(tailBlck==headBlck){
        CThread* ret = headBlck;
        tailBlck= nullptr;
        headBlck= nullptr;
        ret->status = CThread::READY;
        return ret;
    }
    CThread *ret=headBlck;
    headBlck=headBlck->next;
    ret->next= nullptr;
    ret->status = CThread::READY;
    return ret;
}

int CSemaphore::open(CSemaphore **handle, unsigned int init) {
    *handle = new CSemaphore(init);
    if (*handle)
        return 0;
    else
        return -1;
}

int CSemaphore::close(CSemaphore *handle) {
        delete handle;
        return 0;
}
