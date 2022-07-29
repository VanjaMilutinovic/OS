//
// Created by os on 6/21/22.
//

#ifndef PROJECT_BASE_V1_1_LIST_H
#define PROJECT_BASE_V1_1_LIST_H

#include "MemoryAllocator.h"

template <typename T>
class List {
private:
    struct Node{
        T* data;
        Node* next;

        Node(T* _data, Node* _next):data(_data), next(_next){}
    };
    Node *head, *tail;
public:
    List():head(0), tail(0){}
    List(const List<T> &) = delete;
    List<T> operator=(const List<T> &) = delete;

    void addFirst(T* data){
        Node* node = (Node*)MemoryAllocator::getInstance().allocate(sizeof(Node));
        node->data = data;
        node->next = head;
        head = node;
        if (!tail) tail = head;
    }
    void addLast(T* data){
        Node* node = (Node*)MemoryAllocator::getInstance().allocate(sizeof(Node));
        node->data = data;
        node->next = 0;
        if(tail){
            tail->next = node;
            tail = node;
        }else{
            head = tail = node;
        }
    }

    T* removeFisrt(){
        if(!head) return 0;
        Node* node = head;
        head = head->next;
        if(!head) tail = 0;

        T* ret = node->data;
        MemoryAllocator::getInstance().deallocate(reinterpret_cast<void *>(node));
        return ret;
    }
    T* peekFirst(){
        if(!head) return 0;
        return head->data;
    }

    T* removeLast(){
        if (!head) return 0;
        Node* prev  = 0;
        for(Node* cur = head; cur && cur!=tail; cur = cur->next)
            prev = cur;

        Node* node = tail;
        if(prev) prev->next = 0;
        else head = 0;
        tail = prev;

        T* ret = node->data;
        MemoryAllocator::getInstance().deallocate(reinterpret_cast<void *>(node));
        return ret;
    }
    T* peekLast(){
        if(!tail) return 0;
        return tail->data;
    }
};


#endif //PROJECT_BASE_V1_1_LIST_H
