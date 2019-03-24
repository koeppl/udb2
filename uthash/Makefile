all:run-test

run-test:test.c ../common.c uthash.h 
	$(CC) -O2 -Wall $<  ../_external/malloc_count/malloc_count.c -o $@ -ldl

clean:
	rm -f run-test*
