all:run-test

LIBS=-L. -labsl_container

run-test:test.cpp ../common.c
	$(CXX) -O3 ${MALLOC_COUNT_FLAGS} -Wall -std=c++11 -I. $< -o $@ $(LIBS)

clean:
	rm -f run-test*
