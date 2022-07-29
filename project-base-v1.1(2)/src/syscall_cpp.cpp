//
// Created by os on 6/30/22.
//

#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete(void *mem) {
    mem_free(mem);
}

void operator delete[](void *mem) {
    mem_free(mem);
}


Thread::Thread(void (*body)(void *), void *arg) {
    asm volatile("mv a3, %0"::"r"(arg));
    asm volatile("mv a2, %0"::"r"(body));
    asm volatile("mv a1, %0"::"r"(&myHandle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
}

Thread::~Thread() {
}

int Thread::start() {
    thread_start(myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time ) {
    if(time==0)return -1;
    return time_sleep(time);
}

Thread::Thread() {//treba da pozove run
    asm volatile("mv a3, %0"::"r"(this));
    asm volatile("mv a2, %0"::"r"(wrapper));
    asm volatile("mv a1, %0"::"r"(&myHandle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
}

void Thread::wrapper(void* arg) {
    Thread* ja = (Thread*)arg;
    ja->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) :
    Thread(&PeriodicThread::wrapper, new Arg(period, this)){}

bool PeriodicThread::flag= true;
void PeriodicThread::wrapper(void* args) {
    Arg* argumenti = (Arg*)args;
    while(1){
        if(flag) {
            argumenti->ja->periodicActivation();
            sleep(argumenti->period);
        }
    }
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
