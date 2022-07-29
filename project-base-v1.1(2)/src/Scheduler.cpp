//
// Created by os on 6/21/22.
//

#include "../h/Scheduler.h"
CThread* Scheduler::tail = nullptr;
CThread* Scheduler::head = nullptr;

void Scheduler::put(CThread *thread) {
    if(CThread::idle == thread) return;
    thread->status=CThread::READY;
    if(head == nullptr){
        head=tail=thread;
        thread->next= nullptr;
        return;
    }
    else{
        tail->next=thread;
        tail=tail->next;
        tail->next= nullptr;
    }
}

CThread *Scheduler::get() {
    if(head== nullptr)return CThread::idle;
    if(tail==head){
        CThread *thr=head;
        tail= nullptr;
        head= nullptr;
        return thr;
    }
    CThread *thr=head;
    head=head->next;
    thr->next= nullptr;
    return thr;

}

Scheduler &Scheduler::getInstance() {
    static Scheduler instance;
    return instance;
}

Scheduler::Scheduler(){}