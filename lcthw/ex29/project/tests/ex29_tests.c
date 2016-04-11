#include <stdio.h>
#include <dbg.h>
#include <dlfcn.h>

//Function pointer for common library.
typedef int(*lib_function)(const char *data);

int main(int argc, char *argv[])
{
    int rc = 0;

    char *lib_file = "build/libex29.so";
    char *func_to_run = "print_a_message";
    char *data = "Tests passed!";

    //Open the library. The RTLD_NOW flag ensures all undefined symbols in the library are resolved
    //before it returns.
    void *lib = dlopen(lib_file, RTLD_NOW);
    check(lib != NULL, "Failed to open the library %s: %s", lib_file, dlerror());

    //Gets the address of the function from the symbol table in the library.
    lib_function func = dlsym(lib, func_to_run);
    check(func != NULL, "Did not find %s function in the library %s: %s", func_to_run, lib_file, dlerror());

    rc = func(data);
    check(rc == 0, "Function %s returned %d for data: %s", func_to_run, rc, data);

    rc = dlclose(lib);
    check(rc == 0, "Failed to close %s", lib_file);

    return 0;

error:
    return 1;

}
