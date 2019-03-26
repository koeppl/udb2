all:run-test

include ../makefile_malloc_count

run-test:test.c ../common.c ${MALLOC_COUNT_OBJ} stb.h
	$(CC) -O2 ${MALLOC_COUNT_FLAGS} -Wall $< ${MALLOC_COUNT_LINK} -o $@ -lm

clean:
	rm -f run-test*
