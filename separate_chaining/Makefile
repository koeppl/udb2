all:run-test run-test-1

include ../makefile_malloc_count


run-test: test.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -std=gnu++17 -I../_external/bit_span/include -ldl -O3 -Wall $< ${MALLOC_COUNT_LINK} -o $@

run-test-1: test-1.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) -std=gnu++17 -I../_external/bit_span/include -ldl -O3 -Wall $< ${MALLOC_COUNT_LINK} -o $@


clean:
	rm -f run-test*
