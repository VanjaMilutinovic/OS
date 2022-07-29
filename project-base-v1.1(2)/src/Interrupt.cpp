//
// Created by os on 5/27/22.
//
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/CThread.h"
#include "../h/CSemaphore.h"
#include "../h/print.h"
#include "../h/Sleep.h"
#include "../h/GetBuffer.h"
#include "../h/PutBuffer.h"
#include "../h/syscall_cpp.hpp"
void flush();
extern "C" void interrupt() {
    uint64 a7;
    asm volatile("sd a7,%0":"=m"(a7));
    uint64 a6;
    asm volatile("sd  a6,%0":"=m"(a6));
    uint64 a5;
    asm volatile("sd  a5,%0":"=m"(a5));
    uint64 a4;
    asm volatile("sd  a4,%0":"=m"(a4));
    uint64 a3;
    asm volatile("sd  a3,%0":"=m"(a3));
    uint64 a2;
    asm volatile("sd  a2,%0":"=m"(a2));
    uint64 a1;
    asm volatile("sd  a1,%0":"=m"(a1));
    uint64 a0;
    asm volatile("sd  a0,%0":"=m"(a0));
    uint64 scause;
    asm volatile("csrr %0, scause":"=r"(scause));



    switch (scause) {
        case 0x8 :
        case 0x09: {

            uint64 tmp;
            asm volatile("csrr %0, sscratch":"=r"(tmp));
            switch (a0) {
                case 0x01: {
                    //memory allocation
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;


                    void *ret = MemoryAllocator::getInstance().allocate(a1);
                    asm volatile("mv a0, %0"::"r"(ret));

                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x02: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //memory deallocation
                    MemoryAllocator::getInstance().deallocate(reinterpret_cast<void *>(a1));

                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }

                case 0x11: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //thread create
                    CThread **thr = reinterpret_cast<CThread **>(a1);
                    CThread::Body b = reinterpret_cast<void (*)(void *)>(a2);
                    void *arg = reinterpret_cast<void *>(a3);
                    int ret = CThread::createThread(thr, b, arg);

                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x12: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //thread exit
                    CThread::running->status = CThread::FINISHED;
                    CThread::yield();
                    int ret = 0;
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x13: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //thread dispatch
                    uint64 sstatus;
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));

                    CThread::yield();
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));

                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x14: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //thread start
                    Scheduler::getInstance().put(reinterpret_cast<CThread *>(a1));

                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }

                case 0x21: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;


                    //semaphore open
                    CSemaphore** handle = reinterpret_cast<CSemaphore **>(a1);
                    unsigned int init=a2;
                    int ret = CSemaphore::open(handle, init);
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x22: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    //semaphore close
                    CSemaphore* handle = reinterpret_cast<CSemaphore *>(a1);
                    int ret = CSemaphore::close(handle);
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x23: {
                    //semaphore wait
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;


                    uint64 sstatus;
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));

                    CSemaphore* handle = reinterpret_cast<CSemaphore *>(a1);
                    int ret = handle->wait();
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));

                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
                    asm volatile("csrw sepc, %0": :"r"(incPC));


                    break;
                }
                case 0x24: {
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;


                    //semaphore signal
                    CSemaphore* handle = reinterpret_cast<CSemaphore *>(a1);
                    int ret = handle->signal();
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }

                case 0x31: {
                    //sleep
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;


                    uint64 sstatus;
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));

                    time_t time = a1;
                    Sleep::sleep(time);

                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }

                case 0x41: {
                    //getc
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    uint64 sstatus;
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));

                    char ret = GetBuffer::getBuffer->get();
                    asm volatile("mv a0, %0"::"r"(ret));
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));

                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }
                case 0x42: {
                    //putc
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    incPC += 4;

                    uint64 sstatus;
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));

                    PutBuffer::putBuffer->put(a1);
                    flush();
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
                    asm volatile("csrw sepc, %0": :"r"(incPC));

                    break;
                }

                case 0x51:{
                    // start user mode
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    uint64 temp;
                    asm volatile("csrr %0, sstatus" : "=r" (temp));
                    temp &= ~0x100;
                    asm volatile("csrw sstatus, %0" : : "r" (temp));
                    incPC+=4;
                    asm volatile("csrw sepc, %0" : : "r" (incPC));

                    break;
                }
                case 0x52:{
                    uint64 incPC;
                    asm volatile("csrr %0, sepc":"=r"(incPC));
                    uint64 temp;
                    asm volatile("csrr %0, sstatus" : "=r" (temp));
                    temp |= 0x100;
                    asm volatile("csrw sstatus, %0" : : "r" (temp));
                    incPC+=4;
                    asm volatile("csrw sepc, %0" : : "r" (incPC));

                    break;
                }
                default: {
                    break;
                }
            }


            break;
            /*return;*/
        }
        case 0x8000000000000009UL: {
            if(plic_claim()==CONSOLE_IRQ){
                uint8* status = (uint8*)CONSOLE_STATUS;
                if(*status & CONSOLE_RX_STATUS_BIT){
                    //getc
                    uint8 *get = (uint8 *) CONSOLE_RX_DATA;
                    if(*get == 'K')
                        PeriodicThread::flag = !PeriodicThread::flag;
                    else
                        GetBuffer::getBuffer->put(*get);
                }
                if(*status & CONSOLE_TX_STATUS_BIT){
                    //putc
                    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
                        uint8 *put = (uint8 *) CONSOLE_TX_DATA;
                        char c = (PutBuffer::putBuffer->get());
                        if(c=='\0') break;
                        else *put = c;
                    }
                }
                plic_complete(CONSOLE_IRQ);
            }

            break;
        }
        case 0x8000000000000001UL: {
            //timer shit ass

            CThread* cur = Sleep::headSleep;
            for(int i = 0; i<Sleep::count; i++, cur = cur->next){
               if(cur== nullptr)break;
                if(--(cur->sleepTime)<=0){
                    Sleep::count--;
                    Sleep::headSleep = Sleep::headSleep->next;
                    Scheduler::getInstance().put(cur);
                }
            }

            uint64 sepc;
            asm volatile("csrr %0, sepc":"=r"(sepc));
            uint64 sstatus;
            asm volatile("csrr %0, sstatus":"=r"(sstatus));

            if(++CThread::time == DEFAULT_TIME_SLICE) {
                CThread::time = 0;
                CThread::yield();
            }

            asm volatile("csrw sstatus, %0": :"r"(sstatus));
            asm volatile("csrw sepc, %0": :"r"(sepc));

            asm volatile("csrc sip, 0x02");
            break;
        }
        default: {
           /* uint64 scause;
            asm volatile("csrr %0, scause":"=r"(scause));
            uint64 sepc;
            asm volatile("csrr %0, sepc":"=r"(sepc));
            sepc+=4;
            asm volatile("csrw sepc, %0": :"r"(sepc));*/
            break;
        }
    }

}

void flush(){
    uint8* status = (uint8*)CONSOLE_STATUS;
    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
        uint8 *put = (uint8 *) CONSOLE_TX_DATA;
        char c = (PutBuffer::putBuffer->get());
        if(c=='\0') break;
        else *put = c;
    }
}