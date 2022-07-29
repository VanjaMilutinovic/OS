//
// Created by os on 6/21/22.
//

#include "../h/CThread.h"
CThread* CThread::running = nullptr;
CThread* CThread::main = nullptr;
CThread* CThread::idle = nullptr;
int CThread::time = 0;

CThread::CThread(void(*start_routine)(void*), void* arg ){
    body=start_routine;
    this->args=arg;
    status=READY;
}

int CThread::createThread(CThread** handle, CThread::Body body, void *args) {
    *handle = new CThread(body, args);
    (*handle)->stack =MemoryAllocator::getInstance().allocate(DEFAULT_STACK_SIZE);
    if((*handle)->stack== nullptr)return -1;
    (*handle)->context.sp=(uint64)(*handle)->stack+DEFAULT_STACK_SIZE;
    (*handle)->context.ra=(uint64)&wrapper;
    if ((*handle)->context.ra ==0 || (*handle)->context.sp ==0) return -1;
    return 0;
}

void CThread::wrapper() {
    popSppSpie();
    running->body(running->args);
    running->setFinished();
    //dispatch
    asm volatile("li a0,0x13");
    asm volatile("ecall");

}

void CThread::dispatch() {
    CThread* old = running;
    running= Scheduler::getInstance().get();
    if(old->status!=FINISHED && old->status!=BLOCKED && old->status!=SLEEP)
        Scheduler::getInstance().put(old);

    contextSwitch(&old->context, &running->context);
    if(old->isFinised()){
        MemoryAllocator::getInstance().deallocate(old->stack);
        MemoryAllocator::getInstance().deallocate( old);
    }
}

bool CThread::isFinised() {
    return status==Status::FINISHED;
}

void CThread::setFinished() {
    status=Status::FINISHED;
}

void CThread::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    //ubij tajmer ...
    __asm__ volatile ("csrc sip, 0x02");

    __asm__ volatile ("sret");
}

CThread::CThread() {
    status = READY;
    body = 0;
    args = 0;
    context.ra = 0;
    context.sp = 0;
    stack = 0;

}

void CThread::popregs() {
// Pop all registers
    asm volatile("ld x3, 0x18(sp)");
    asm volatile("ld x4, 0x20(sp)");
    asm volatile("ld x5, 0x28(sp)");
    asm volatile("ld x6, 0x30(sp)");
    asm volatile("ld x7, 0x38(sp)");
    asm volatile("ld x8, 0x40(sp)");
    asm volatile("ld x9, 0x48(sp)");
    asm volatile("ld x10, 0x50(sp)");
    asm volatile("ld x11, 0x58(sp)");
    asm volatile("ld x12, 0x60(sp)");
    asm volatile("ld x13, 0x68(sp)");
    asm volatile("ld x14, 0x70(sp)");
    asm volatile("ld x15, 0x78(sp)");
    asm volatile("ld x16, 0x80(sp)");
    asm volatile("ld x17, 0x88(sp)");
    asm volatile("ld x18, 0x90(sp)");
    asm volatile("ld x19, 0x98(sp)");
    asm volatile("ld x20, 0xa0(sp)");
    asm volatile("ld x21, 0xa8(sp)");
    asm volatile("ld x22, 0xb0(sp)");
    asm volatile("ld x23, 0xb8(sp)");
    asm volatile("ld x24, 0xc0(sp)");
    asm volatile("ld x25, 0xc8(sp)");
    asm volatile("ld x26, 0xd0(sp)");
    asm volatile("ld x27, 0xd8(sp)");
    asm volatile("ld x28, 0xe0(sp)");
    asm volatile("ld x29, 0xe8(sp)");
    asm volatile("ld x30, 0xf0(sp)");
    asm volatile("ld x31, 0xf8(sp)");
    asm volatile("addi sp, sp, 256");
}

void CThread::pushregs() {
    asm volatile("addi sp, sp, -256");
    asm volatile("sd x3, 0x18(sp)");
    asm volatile("sd x4, 0x20(sp)");
    asm volatile("sd x5, 0x28(sp)");
    asm volatile("sd x6, 0x30(sp)");
    asm volatile("sd x7, 0x38(sp)");
    asm volatile("sd x8, 0x40(sp)");
    asm volatile("sd x9, 0x48(sp)");
    asm volatile("sd x10, 0x50(sp)");
    asm volatile("sd x11, 0x58(sp)");
    asm volatile("sd x12, 0x60(sp)");
    asm volatile("sd x13, 0x68(sp)");
    asm volatile("sd x14, 0x70(sp)");
    asm volatile("sd x15, 0x78(sp)");
    asm volatile("sd x16, 0x80(sp)");
    asm volatile("sd x17, 0x88(sp)");
    asm volatile("sd x18, 0x90(sp)");
    asm volatile("sd x19, 0x98(sp)");
    asm volatile("sd x20, 0xa0(sp)");
    asm volatile("sd x21, 0xa8(sp)");
    asm volatile("sd x22, 0xb0(sp)");
    asm volatile("sd x23, 0xb8(sp)");
    asm volatile("sd x24, 0xc0(sp)");
    asm volatile("sd x25, 0xc8(sp)");
    asm volatile("sd x26, 0xd0(sp)");
    asm volatile("sd x27, 0xd8(sp)");
    asm volatile("sd x28, 0xe0(sp)");
    asm volatile("sd x29, 0xe8(sp)");
    asm volatile("sd x30, 0xf0(sp)");
    asm volatile("sd x31, 0xf8(sp)");
}

void CThread::yield()
{
    // Push all registers
    pushregs();

    // Switch context as suitable
    dispatch();

    popregs();
}


