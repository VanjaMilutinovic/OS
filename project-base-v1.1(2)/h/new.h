//
// Created by os on 6/22/22.
//

#ifndef PROJECT_BASE_V1_1_NEW_H
#define PROJECT_BASE_V1_1_NEW_H

#define overrideNew \
static void* operator new(size_t size){ \
    int brBlokova = size/MEM_BLOCK_SIZE;\
    if (size % MEM_BLOCK_SIZE >0) brBlokova++;\
    size_t param = brBlokova*MEM_BLOCK_SIZE;  \
    return MemoryAllocator::getInstance().allocate(param);    \
}

#define overrideDelete \
static void operator delete(void* mem){\
    MemoryAllocator::getInstance().deallocate(mem);\
}


#define overrideArrNew \
static void* operator new[](size_t size){\
    int brBlokova = size/MEM_BLOCK_SIZE;\
    if (size % MEM_BLOCK_SIZE >0) brBlokova++;\
    size_t param = brBlokova*MEM_BLOCK_SIZE;  \
    return MemoryAllocator::getInstance().allocate(param);  }

#define overrideArrDelete \
static void operator delete[](void* mem){\
MemoryAllocator::getInstance().deallocate(mem);\
}

#endif //PROJECT_BASE_V1_1_NEW_H