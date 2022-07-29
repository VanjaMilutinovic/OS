//
// Created by os on 5/26/22.
//

#include "../h/syscall_c.h"
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../lib/mem.h"
#include "../h/CThread.h"
#include "../h/print.h"
#include "../test/Threads_C_API_test.hpp"
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"
#include "../test/ConsumerProducer_C_API_test.h"
#include "../test/ThreadSleep_C_API_test.hpp"
#include "../h/PutBuffer.h"
#include "../h/GetBuffer.h"
#include "../test/Threads_CPP_API_test.hpp"

extern "C" void interruptvec();

void idleFun(void*){
    while(1){
        if(!Scheduler::getInstance().headNull()) thread_dispatch();
    }
}
void funA(void*);
void funB(void*);
void funE(void*);

class MojPeriodic: public PeriodicThread {
public:
    char c;
    MojPeriodic(time_t period, char c) : PeriodicThread(period) { this->c=c;}
    void periodicActivation() override{
        putc(c);
    }
};

int main(){
    asm volatile("csrw stvec, %0": : "r"(&interruptvec));

    CThread::main=new CThread;
    CThread::running=CThread::main;
    PutBuffer::putBuffer= new PutBuffer(1024);
    GetBuffer::getBuffer= new GetBuffer(1024);
    thread_create(&CThread::idle, &idleFun, nullptr);
    user();

    //Threads_C_API_test();
    //producerConsumer_C_API();
    //testSleeping();
    //ConsumerProducerCPP::testConsumerProducer();
    //Threads_CPP_API_test();
    //producerConsumer_CPP_Sync_API();

    Thread* A = new Thread(&funA, nullptr);
    Thread* B = new Thread(&funB, nullptr);
    PeriodicThread* C = new MojPeriodic(5, 'C');
    PeriodicThread* D = new MojPeriodic(10, 'D');
    Thread* E = new Thread(&funE, nullptr);

    A->start();
    B->start();
    C->start();
    D->start();
    E->start();
    thread_dispatch();

    return 0;
}

void funA(void*){
    while(1) {
        putc('A');
        time_sleep(5);
    }
}
void funB(void*){
    while(1) {
        putc('B');
        time_sleep(5);
    }
}
void funE(void*){
    while(1){
        char c = Console::getc();
        Console::putc(c);
    }
}
