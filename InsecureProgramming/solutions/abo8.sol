This exercise is similar to abo7, but differs in that the global character buffer buf is not initialized to any value.  This means that it is located in the .bss section of the executable. This section is located directly after the .data section, and suffers from the same inability to overwrite anything useful in this environment.
