all:run-test run-test-1

include ../makefile_malloc_count

run-test:test.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -O3 -Wall -std=c++11 $< ${MALLOC_COUNT_LINK} -o $@

run-test-1:test-1.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -O3 -Wall -std=c++11 $< ${MALLOC_COUNT_LINK} -o $@

clean:
	rm -f run-test*
