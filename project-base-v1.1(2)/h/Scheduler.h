//
// Created by os on 6/21/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_H
#define PROJECT_BASE_V1_1_SCHEDULER_H

#include "CThread.h"

class CThread;
class Scheduler {
private:
    Scheduler();
    static CThread *tail;
    static CThread *head;

public:
    static bool headNull(){return head==nullptr;}
    static Scheduler& getInstance();
    static CThread* get();
    static void put(CThread* thread);
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_H