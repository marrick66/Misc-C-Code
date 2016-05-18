#ifndef lcthw_List_h
#define lcthw_List_h

#include <stdlib.h>

//I assume this is forwardly declared so that the struct can reference
//itself, but it's not really needed...
struct ListNode;

typedef struct ListNode
{
    struct ListNode *next;
    struct ListNode *prev;
    void *value;
}ListNode;

typedef struct List
{
    int count;
    ListNode *first;
    ListNode *last;
}List;

List *List_create();
void List_destroy(List *list);
void List_clear(List *list);
void List_clear_destroy(List *list);

//Is he doing these as macros to prevent function calls?
#define List_count(A) ((A)->count)
#define List_first(A) ((A)->first != NULL ? (A)->first->value : NULL)
#define List_last(A) ((A)->last != NULL ? (A)->last->value : NULL)

void List_push(List *list, void *value);
void *List_pop(List *list);
void List_unshift(List *list, void *value);
void *List_shift(List *list);
void *List_remove(List *list, ListNode *node);

//This can list forwards or backwards, depending on the values
//of L and M.
#define LIST_FOREACH(L, S, M, V) ListNode *_node = NULL;\
    ListNode *V = NULL;\
    for(V = _node = L->S; _node != NULL; V = _node = _node->M)

#endif
