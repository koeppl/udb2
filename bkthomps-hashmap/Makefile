all:run-test run-test-1a

include ../makefile_malloc_count

run-test:test.c ../common.c ${MALLOC_COUNT_OBJ} unordered_map.c unordered_map.h
	$(CC) -O2 -Wall -std=gnu99 $< ${MALLOC_COUNT_LINK} unordered_map.c -o $@

run-test-1a:test-1a.c ../common.c ${MALLOC_COUNT_OBJ} unordered_map.c unordered_map.h
	$(CC) -O2 -Wall -std=gnu99 $< ${MALLOC_COUNT_LINK} unordered_map.c -o $@

clean:
	rm -f run-test*
