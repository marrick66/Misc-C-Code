#include "lines.h"

struct LineNode *GetLines(const char *FilePath)
{
    FILE *file = NULL;
    struct LineNode *head = NULL;
    struct LineNode *tail = NULL;
    char *currentLine = NULL;
    size_t lineLength = 0;
    wordexp_t expanded;

    memset(&expanded, 0, sizeof(wordexp_t));

    //Expand the path based on any shell characters given.
    wordexp(FilePath, &expanded, 0);
    check(expanded.we_wordv[0] != NULL, "Unable to expand file path for %s", FilePath);

    file = fopen(expanded.we_wordv[0], "r");
    check(file != NULL, "Unable to open file: %s.", FilePath);
    
    //Get the first line and set it to the head of the list.
    check(getline(&currentLine, &lineLength, file) != -1, "Unable to read line, or EOF.");

    head = GetNode(currentLine, 1);
    check(head != NULL, "Unable to get the first line of the file.");

    tail = head;

    //We have to set currentLine to NULL, otherwise 
    //we're reusing the same memory for each line...
    currentLine = NULL;

    //Get the rest of the lines...
    while(getline(&currentLine, &lineLength, file) != -1)
    {
        int LineNumber = tail->LineNumber + 1;
        struct LineNode *newNode = GetNode(currentLine, LineNumber);

        check(newNode != NULL, "Unable to get line %d.", LineNumber);

        tail->Next = newNode;
        tail = newNode;

        currentLine = NULL;
    }

    if(file)
        fclose(file);

    return head;
    
error:
    //We clean up whatever has been constructed of the linked list...
    DeleteLines(head);
    if(file)
        fclose(file);

    return NULL;
}

struct LineNode *GetNode(char *Line, int LineNumber)
{
    //Terminate the string at the first newline (if found).
    char *newline = strchr(Line, '\n');
    if(newline)
        *newline = 0;

    struct LineNode *node = calloc(1, sizeof(struct LineNode));
    check_mem(node);
    
    node->LineNumber = LineNumber;
    node->Line = Line;
    node->Next = NULL;

    return node;

error:
    if(node) free(node);
    return NULL;
}

void DeleteLines(struct LineNode *Lines)
{
    struct LineNode *temp = NULL;

    while(Lines != NULL)
    {
        //Set temp to the current head of the list,
        //and move the head to the remaining items for the
        //next iteration.
        temp = Lines;
        Lines = Lines->Next;

        //We only free pointers, of which the Line member is.
        //But, we have to make sure it actually points to something.
        if(temp->Line != NULL)
            free(temp->Line);

        free(temp);
    }

}        
