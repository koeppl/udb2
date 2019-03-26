all:run-test-compact run-test-plain run-test-cht

include ../makefile_malloc_count


run-test-compact: test-compact.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/bit_span/include -ldl -O3 -march=native -mtune=native -Wall $< ${MALLOC_COUNT_LINK}  -o $@

run-test-plain: test-plain.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/bit_span/include -ldl -O3 -march=native -mtune=native -Wall $< ${MALLOC_COUNT_LINK}  -o $@

run-test-cht: test-cht.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/bit_span/include -ldl -O3 -march=native -mtune=native -Wall $< ${MALLOC_COUNT_LINK}  -o $@


clean:
	rm -f run-test*
