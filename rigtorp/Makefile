all: run-test

include ../makefile_malloc_count

run-test:test.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -O3 ${MALLOC_COUNT_FLAGS} -Wall -I. $< ${MALLOC_COUNT_LINK} -o $@

clean:
	rm -f run-test*
