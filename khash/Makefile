
all:run-test run-test-1

include ../makefile_malloc_count

run-test:test.c ../common.c ${MALLOC_COUNT_OBJ} khash.h
	$(CC) -O2 ${MALLOC_COUNT_FLAGS} -Wall $< ${MALLOC_COUNT_LINK} -o $@

run-test-1:test-1.c ../common.c ${MALLOC_COUNT_OBJ} khash.h
	$(CC) -O2 ${MALLOC_COUNT_FLAGS} -Wall $< ${MALLOC_COUNT_LINK} -o $@

clean:
	rm -f run-test*
