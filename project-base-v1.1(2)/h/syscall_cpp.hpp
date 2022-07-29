//
// Created by os on 6/30/22.
//

#ifndef SEM_TH_EXIT_SYSCALL_CPP_HPP
#define SEM_TH_EXIT_SYSCALL_CPP_HPP


#include "syscall_c.h"

void* operator new (size_t);
void* operator new[](size_t);
void operator delete (void*);
void operator delete[](void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    static void wrapper(void*);
    thread_t myHandle;
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    static bool flag;
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    static void wrapper(void*);
    struct Arg{
        PeriodicThread* ja;
        time_t period;
        Arg(time_t time, PeriodicThread* pt):ja(pt), period(time){}
    };
};

class Console {
public:
    static char getc ();
    static void putc (char);
};




#endif //SEM_TH_EXIT_SYSCALL_CPP_HPP
