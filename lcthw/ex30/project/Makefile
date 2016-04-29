#NOTES:
#OPTFLAGS are optionally passed into make to add custom flags to the compiler.
#OPTLIBS are optional libraries passed into the linker.

#Default flags for the compiler:
CFLAGS= -O2 -Wall -Wextra -Isrc -I../../common -rdynamic -DNDEBUG $(OPTFLAGS)
#Default links to the dynamic linker library (libdl.a):
LIBS=-ldl $(OPTLIBS)
#Use this default, unless the PREFIX variable has been defined:
PREFIX?=/usr/local

#Sets the sources variable to all .c files in and below the src directory:
SOURCES=$(wildcard src/**/*.c src/*.c)
#Sets the objects variable to all .o files by replacing the elements in the
#SOURCES variable with .o:
OBJECTS=$(patsubst %.c, %.o, $(SOURCES))

#All unit tests should be named <func>_tests.c under the
#tests folder:
TEST_SRC=$(wildcard tests/*_tests.c)
#Getting the test executables by removing the .c from the test 
#source files:
TESTS=$(patsubst %.c, %, $(TEST_SRC))

#Build the library by replacing YOUR_LIBRARY with the
#name of your choice:
TARGET=build/libex29.a
#Build the library as a dynamically linked one:
SO_TARGET=$(patsubst %.a, %.so, $(TARGET))

#The target build (static library, dynamic library, unit tests):
all: $(TARGET) $(SO_TARGET) tests

#For dev builds, add debugging symbols and remove the NDEBUG define:
dev: CFLAGS=-g -Wall -Isrc -Wall -Wextra $(OPTFLAGS)
dev: all

#Make the library position independent (for dynamic linking), build
#all child objects, 
$(TARGET): CFLAGS += -fPIC
$(TARGET): build $(OBJECTS)
	ar rcs $@ $(OBJECTS)
	ranlib $@

$(SO_TARGET): $(TARGET) $(OBJECTS)
	 $(CC) -shared -o $@ $(OBJECTS)

build:
	@mkdir -p build
	@mkdir -p bin

#Run unit tests. The .PHONY means that this does not
#use a physical file, just run the associated commands.
#NOTE: This had to be changed, since the libraries need to be put in
#between the source file and the object file. Otherwise, it won't work.
#we loop through each of the tests, building it appropriately.
.PHONY: tests
tests: CFLAGS += $(TARGET)
tests:
	$(foreach var, $(TESTS), $(CC) $(CFLAGS) $(TARGET) $(var).c $(LIBS) -o $(var);) 
	sh ./tests/runtests.sh

#Clean up:
clean: 
	rm -rf build $(OBJECTS) $(TESTS)
	rm -f tests/tests.log
	find . -name "*.gc*" -exec rm {} \;
	rm -rf `find . -name "*.dSYM" -print`

#Installation:
install: all
	install -d $(DESTDIR)/$(PREFIX)/lib/
	install $(TARGET) $(DESTDIR)/$(PREFIX)/lib/

#Check for the use of unsafe functions:
check:
	@echo Files with potientially dangerous functions:
	@egrep '[^_.>a-zA-Z0-9](str(n?cpy|n?cat|xfrm|n?dup|str|pbrk|tok|_)|stpn?cpy|a?sn?printf|byte_)' $(SOURCES) || true

