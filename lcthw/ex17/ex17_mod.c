#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#define MAX_DATA 512
#define MAX_ROWS 100

//Continuous area of memory to store address data, note that
//it's using finite arrays, so no dynamic memory allocation is needed.
struct Address
{
	int id;
	int set;
	char name[MAX_DATA];
	char email[MAX_DATA];
};

struct Database
{
	struct Address rows[MAX_ROWS];
};

struct Connection
{
	FILE *file;
	struct Database *db;
};

void die(const char *message)
{
	if(errno)
	{
		//The original function passed in the errno, which 
		//is not a valid call.  When this is called with
		//the message parameter, it prints the following:
		//<message>:<errno description>.
		perror(message);
	}
	else
	{
		printf("ERROR: %s\n", message);
	}

	exit(1);
}

void Address_print(struct Address *addr)
{
	printf("%d %s %s\n", addr->id, addr->name, addr->email);
}

void Database_load(struct Connection *conn)
{
	int rc = fread(conn->db, sizeof(struct Database), 1, conn->file);
	if(rc != 1)
	{
		die("Failed to load database.");
	}
}

struct Connection *Database_open(const char *filename, char mode)
{
	struct Connection *conn = malloc(sizeof(struct Connection));

	if(!conn)
		die("Memory error.");

	conn->db = malloc(sizeof(struct Database));
	
	if(!conn->db)
		die("Memory error.");

	if(mode == 'c')
	{
		conn->file = fopen(filename, "w");
	}
	else
	{
		conn->file = fopen(filename, "r+");

		if(conn->file)
			Database_load(conn);
	}

	if(!conn->file)
		die("Failed to open file.");

	return conn;
}

void Database_close(struct Connection *conn)
{
	if(conn)
	{
		if(conn->file)
			fclose(conn->file);
		if(conn->db)
			free(conn->db);
		free(conn);
	}
}

//Original write, only used for creation.
void Database_write(struct Connection *conn)
{
        rewind(conn->file);

        int rc = fwrite(conn->db, sizeof(struct Database), 1, conn->file);
        if(rc != 1)
                die("Failed to write database.");

        rc = fflush(conn->file);
        if(rc == -1)
                die("Cannot flush database.");
}

//We attempt to modify this function so that it only writes
//the specified id to the file, instead of the entire in-memory
//database.
void Database_write_record(struct Connection *conn, int id)
{
	rewind(conn->file);
	//Calculate where to write in the file...
	long offset = id * sizeof(struct Address);
	//Set the file cursor to the offset from the
	//beginning of the file...
	int rc = fseek(conn->file, offset, SEEK_SET); 
	if(rc == -1)
		die("Unable to set file position.");

	rc = fwrite(&conn->db->rows[id], sizeof(struct Address), 1, conn->file);
	if(rc != 1)
		die("Failed to write database.");

	rc = fflush(conn->file);
	if(rc == -1)
		die("Cannot flush database.");
}

void Database_create(struct Connection *conn)
{
	for(int i = 0; i < MAX_ROWS; i++)
	{
		struct Address addr = { .id = i, .set = 0 };
		conn->db->rows[i] = addr;
	}
}

void Database_set(struct Connection *conn, int id, const char *name, const char *email)
{
	struct Address *addr = &conn->db->rows[id];
	if(addr->set)
		die("Already set, delete it first.");

	addr->set = 1;
	//This copies at most MAX_DATA bytes from name to addr->name.
	//If the length of name is less than MAX_DATA, the remaining
	//chars are nulled out until MAX_DATA is reached.
	//Note that if name is greater than or equal to MAX_DATA,
	//only MAX_DATA bytes are copied, but no room is left for a null terminator.
	//Therefore, some memory disclosure may occur after the allocated
	//memory for addr->name, depending on the next null byte.
	//This applies equally for the email copying below.
	char *res = strncpy(addr->name, name, MAX_DATA);
	
	if(!res)
		die("Name copy failed.");

	res = strncpy(addr->email, email, MAX_DATA);
	
	if(!res)
		die("Email copy failed.");
}

void Database_get(struct Connection *conn, int id)
{
	struct Address *addr = &conn->db->rows[id];

	if(addr->set)
	{
		Address_print(addr);
	}
	else
	{
		die("ID not set.");
	}
}

void Database_delete(struct Connection *conn, int id)
{
	struct Address addr = { .id = id, .set = 0 };
	conn->db->rows[id] = addr;
}

void Database_list(struct Connection *conn)
{
	struct Database *db = conn->db;
	for(int i = 0; i < MAX_ROWS; i++)
	{
		struct Address *addr = &db->rows[i];
		if(addr->set)
			Address_print(addr);
	}
}

int main(int argc, char *argv[])
{

	if(argc < 3)
		die("USAGE: ex17 <dbfile> <action> [action parameters].");

	char *filename = argv[1];
	char action = argv[2][0];
	struct Connection *conn = Database_open(filename, action);
	int id = 0;

	if(argc > 3)
	{
		id = atoi(argv[3]);
	}

	if(id >= MAX_ROWS)
		die("There are not that many records.");

	switch(action)
	{
		case 'c':
			Database_create(conn);
			Database_write(conn);
			break;
		case 'g':
			if(argc != 4)
			{
				die("Need an ID to get.");
			}
			
			Database_get(conn, id);
			break;
		case 's':
			if(argc != 6)
			{
				die("Need an ID, Name, and Email to set.");
			}
			
			Database_set(conn, id, argv[4], argv[5]);
			Database_write_record(conn, id);
			break;
		case 'd':
			if(argc != 4)
			{
				die("Need an ID to delete.");
			}

			Database_delete(conn, id);
			Database_write_record(conn, id);
			break;
		case 'l':
			Database_list(conn);
			break;
		default:
			die("Invalid action: c=Create, g=Get, s=Set, d=Delete, l=List.");
	}

	Database_close(conn);

	return 0;
}
