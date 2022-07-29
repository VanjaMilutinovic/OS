//
// Created by os on 6/21/22.
//

#ifndef PROJECT_BASE_V1_1_THREAD_H
#define PROJECT_BASE_V1_1_THREAD_H


#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Scheduler.h"
#include "../h/new.h"


class CThread {
public:
    using Body = void(*)(void*);
    overrideNew;
    overrideDelete;
    overrideArrDelete;
    static int createThread(CThread** handle, Body body, void* args);
    static void dispatch();

    bool isFinised();
    void setFinished();

    static int time;
    int sleepTime=0;

    static CThread* idle;
    static CThread* running;
    static CThread* main;
    CThread* next = nullptr;

    enum Status{READY,FINISHED, SLEEP, BLOCKED, RUNNING};
    Status status=READY;

    static void yield();

    CThread();
    ~CThread(){MemoryAllocator::getInstance().deallocate(stack);}

private:
    static void wrapper();
    static void popSppSpie();
    CThread(void(*start_routine)(void*),
            void* arg );

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body=nullptr;
    void* args=nullptr;
    void* stack=nullptr;
    Context context;

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static uint64 constexpr STACK_SIZE = 1024;

    static void pushregs();

    static void popregs();
};


#endif //PROJECT_BASE_V1_1_THREAD_H