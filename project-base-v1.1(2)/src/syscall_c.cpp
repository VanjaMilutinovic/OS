//
// Created by os on 5/29/22.
//

#include "../h/syscall_c.h"

int mem_free(void * param) {
    asm volatile("mv a1, %0"::"r"(param));
    asm volatile("li a0, 0x02");
    asm volatile("ecall");
    return 0;
}

void *mem_alloc(size_t size) {
    //1-size poravnati na blokove
    //MEM_BLOCK_SIZE
    int brBlokova = size/MEM_BLOCK_SIZE;
    if (size % MEM_BLOCK_SIZE >0) brBlokova++;
    size_t param = brBlokova*MEM_BLOCK_SIZE;
    //2-vraca pointer na alociranu mem ili null
    asm volatile("mv a1, %0"::"r"(param));
    asm volatile("li a0, 0x01");
    asm volatile("ecall");
    void* ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    asm volatile("mv a3, %0"::"r"(arg));
    asm volatile("mv a2, %0"::"r"(start_routine));
    asm volatile("mv a1, %0"::"r"(handle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    Scheduler::getInstance().put(*(handle));

    return ret;

}

void thread_dispatch (){
    asm volatile("li a0, 0x13");
    asm volatile("ecall");
}

void thread_start(thread_t handle) {
    asm volatile("mv a1, %0"::"r"(handle));
    asm volatile("li a0, 0x14");
    asm volatile("ecall");

}

int thread_exit() {
    asm volatile("li a0, 0x12");
    asm volatile("ecall");
    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int sem_open(sem_t *handle, unsigned int init) {
    asm volatile("mv a2, %0"::"r"(init));
    asm volatile("mv a1, %0"::"r"(handle));
    asm volatile("li a0, 0x21");
    asm volatile("ecall");

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int sem_close(sem_t handle) {
    asm volatile("mv a1, %0"::"r"(handle));
    asm volatile("li a0, 0x22");
    asm volatile("ecall");

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int sem_wait(sem_t id) {
    asm volatile("mv a1, %0"::"r"(id));
    asm volatile("li a0, 0x23");
    asm volatile("ecall");

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int sem_signal(sem_t id) {
    asm volatile("mv a1, %0"::"r"(id));
    asm volatile("li a0, 0x24");
    asm volatile("ecall");

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

int time_sleep(time_t time) {
    if(time ==0) return -1;
    asm volatile("mv a1, %0"::"r"(time));
    asm volatile("li a0, 0x31");
    asm volatile("ecall");
    return 0;
}

char getc() {
    asm volatile("li a0, 0x41");
    asm volatile("ecall");
    char ret;
    asm volatile("mv %0, a0":"=r"(ret));
    return ret;
}

void putc(char c) {
    asm volatile("mv a1, %0"::"r"(c));
    asm volatile("li a0, 0x42");
    asm volatile("ecall");
}

void user(){
    asm volatile("li a0,0x51");
    asm volatile("ecall");
}
void priv(){
    asm volatile("li a0,0x52");
    asm volatile("ecall");
}




