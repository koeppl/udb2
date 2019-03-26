all:run-test-dense run-test

include ../makefile_malloc_count

run-test-dense:test-dense.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -O3 -Wall -I. $< ${MALLOC_COUNT_LINK} -o $@

run-test:test.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -O3 -Wall -I. $< ${MALLOC_COUNT_LINK} -o $@

clean:
	rm -f run-test*
