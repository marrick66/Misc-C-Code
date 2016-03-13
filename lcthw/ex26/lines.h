#include <stdio.h>
#include <dbg.h>
#include <stdlib.h>
#include <wordexp.h>

//A linked list node that contains the number
//and contents of a line.
struct LineNode
{
    unsigned int LineNumber;
    char *Line;
    struct LineNode *Next;
};

//Creates a new line node from a string and line number.
extern struct LineNode *GetNode(char *Line, int LineNumber);

//Returns a pointer to a linked list of LineNodes, or NULL
//on error or empty file.
extern struct LineNode *GetLines(const char *FilePath);

//Deletes and frees all the data associated with a Line linked list.
extern void DeleteLines(struct LineNode *Lines);
