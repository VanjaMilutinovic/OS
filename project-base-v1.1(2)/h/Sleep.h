//
// Created by os on 6/30/22.
//

#ifndef SEM_TH_EXIT_SLEEP_H
#define SEM_TH_EXIT_SLEEP_H


#include "CThread.h"

class Sleep {
public:
    static CThread *headSleep;
    static void sleep(time_t time);
    static int count;
};


#endif //SEM_TH_EXIT_SLEEP_H
