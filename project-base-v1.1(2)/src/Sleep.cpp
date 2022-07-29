//
// Created by os on 6/30/22.
//

#include "../h/Sleep.h"

CThread *Sleep::headSleep = nullptr;
int Sleep::count = 0;

void bubbleSort(CThread **, int);

void Sleep::sleep(time_t time) {
    if(time <= 0) return;
    count++;
    CThread *element = CThread::running;
    element->sleepTime = time;
    element->status = CThread::SLEEP;
    //ubacuje u niz
    element->next = headSleep;
    headSleep = element;

    //sortira
    bubbleSort(&headSleep, count);
    //dispathc
    CThread::yield();
}

CThread *swap(CThread *ptr1, CThread *ptr2) {
    CThread *tmp = ptr2->next;
    ptr2->next = ptr1;
    ptr1->next = tmp;
    return ptr2;
}

void bubbleSort(CThread **head, int count) {
    CThread **h;
    int i, j, swapped;
    for (i = 0; i <= count; i++) {
        h = head;
        swapped = 0;
        for (j = 0; j < count - i - 1; j++) {
            CThread *p1 = *h;
            CThread *p2 = p1->next;
            if (p1->sleepTime > p2->sleepTime) {
                *h = swap(p1, p2);
                swapped = 1;
            }
            h = &(*h)->next;
        }
        if (swapped == 0)
            break;
    }
}