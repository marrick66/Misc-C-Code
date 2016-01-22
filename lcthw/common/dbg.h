/* Original definition:
#ifndef __dbg_h__
#define __dbg_h__

I changed this, because the general consensus online
is that defines with double underscores are usually
defined by the system, and there may be a collision
with other headers.
*/

#ifndef DBG_H
#define DBG_H

//Prevent these headers from being included multiple times...
#ifndef _STDIO_H
#include <stdio.h>
#endif

#ifndef _ERRNO_h
#include <errno.h>
#endif

#ifndef _STRING_H
#include <string.h>
#endif

//Create a template for the debug function, if compiled with NDEBUG, it does nothing.
//The ... indicates variable arguments, which are substituted for the ##__VA_ARGS__ definition.
//__FILE__ and __LINE__ are built in defines for the current source file and line.
#ifdef NDEBUG
#define debug(M, ...)
#else
#define debug(M, ...) fprintf(stderr, "DEBUG %s:%d: " M "\n", \
	__FILE__, __LINE__, ##__VA_ARGS__)
#endif

#define clean_errno() (errno == 0 ? "None" : strerror(errno))

#define log_err(M, ...) fprintf(stderr, \
	"[ERROR] (%s:%d: errno: %s) " M "\n", __FILE__, __LINE__, \
	clean_errno(), ##__VA_ARGS__)

#define log_warn(M, ...) fprintf(stderr, \
	"[WARN] (%s:%d: errno: %s) " M "\n", __FILE__, __LINE__, \
	clean_errno(), ##__VA_ARGS__)

#define log_info(M, ...) fprintf(stderr, \
	"[INFO] (%s:%d) " M "\n", __FILE__, __LINE__, ##__VA_ARGS__)

#define check(A, M, ...) if(!(A)) { \
	log_err(M, ##__VA_ARGS__); errno=0; goto error; }

#define sentinel(M, ...) { log_err(M, ##__VA_ARGS__); \
	errno=0; goto error; }

#define check_mem(A) check((A), "Out of memory.")

#define check_debug(A, M, ...) if(!(A)) { debug(M, ##__VA_ARGS__); \
	errno=0; goto error; }

#endif
