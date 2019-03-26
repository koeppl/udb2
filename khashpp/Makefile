all:run-test

include ../makefile_malloc_count

run-test:test.cpp ../common.c ${MALLOC_COUNT_OBJ} khash.hpp
	$(CXX) -O3 -Wall $< ${MALLOC_COUNT_LINK} -o $@

clean:
	rm -f run-test*
