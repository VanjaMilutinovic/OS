//
// Created by os on 5/26/22.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_H

#include "../lib/hw.h"

class MemoryAllocator{
    struct freeMemFragment{
        /*first fit algoritam*/
        size_t size;
        freeMemFragment* next;
    };
    freeMemFragment* head;
    int tryToJoin(freeMemFragment* current);
    MemoryAllocator();

public:
    static MemoryAllocator& getInstance();
    void deallocate(void* address);
    void* allocate(size_t size);

};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_H