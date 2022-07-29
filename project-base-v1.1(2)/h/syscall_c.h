//
// Created by os on 5/29/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H
#include "../lib/mem.h"
#include "../h/CThread.h"
#include "CSemaphore.h"

void* mem_alloc (size_t size);
int mem_free (void*);

typedef CThread* thread_t;
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);
int thread_exit ();
void thread_dispatch ();
void thread_start(thread_t handle);


typedef CSemaphore* sem_t;
int sem_open (sem_t* handle, unsigned init);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);

typedef unsigned long time_t;
int time_sleep (time_t);

const int EOF = -1;
char getc ();
void putc (char c);

void priv();
void user();
#endif //PROJECT_BASE_V1_1_SYSCALL_C_H