//
// Created by os on 5/26/22.
//

#include "../h/MemoryAllocator.h"

MemoryAllocator::MemoryAllocator() {
    head = (freeMemFragment*)HEAP_START_ADDR;
    head->next = nullptr;
    head->size = (uint64)HEAP_END_ADDR - (uint64 )HEAP_START_ADDR;

}

void *MemoryAllocator::allocate(size_t size) {
    //try to find
    freeMemFragment* current = head, *previous = nullptr;
    for(;current;previous = current, current = current->next)
        if(current->size>=size) break;
    //if not found
    if(!current) return nullptr;
    //if found allocate
    else{
        size_t  remaining = current->size-size;
        current->size = size;
        size_t offset = sizeof(freeMemFragment) + size;
        freeMemFragment* newBlock = (freeMemFragment*)((char*)current + offset);
        if(previous)previous->next = newBlock;
        else head = newBlock;
        newBlock->next = current->next;
        newBlock->size=remaining-sizeof(freeMemFragment);

        current->next = nullptr;
        return (char*)current+sizeof(freeMemFragment);
    }
}

void MemoryAllocator::deallocate(void *address) {
    freeMemFragment* current = 0;
    if(!head || address<(char*)head)
        current = 0;
    else
        for (current = head; current->next && address>(char*)(current->next); current = current->next);
    //insert new elem after current
    freeMemFragment* newFrag = (freeMemFragment*)address;

    newFrag->size = (*(size_t*)address - sizeof(freeMemFragment));
    if(current) {
        newFrag->next = current->next;
        current->next = newFrag;
    }
    else {
        newFrag->next = head;
        head = newFrag;
    }
    //try joining
    tryToJoin(newFrag);
    tryToJoin(current);
}

int MemoryAllocator::tryToJoin(MemoryAllocator::freeMemFragment *current) {
    if(!current) return 0;
    if(current->next && (char*)current+current->size==(char*)(current->next)){
        //current & current->next can merge
        current->size += current->next->size;
        current->next = current->next->next;
        return 1;
    }else return 0;
}

MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}
