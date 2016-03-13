#include "lines.h"

int main(void)
{
    struct LineNode *lines = GetLines("sample_file");
    struct LineNode *currentLine = lines;
    while(currentLine != NULL)
    {
        printf("%s\n", currentLine->Line);
        currentLine = currentLine->Next;
    }

    DeleteLines(lines);
    return 0;
}
