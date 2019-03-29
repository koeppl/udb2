all:run-test-cv-plain run-test-cv-sparse  run-test-elias-plain  run-test-elias-sparse  run-test-layered-plain  run-test-layered-sparse

include ../makefile_malloc_count



run-test-cv-plain: test-cv-plain.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@

run-test-elias-plain: test-elias-plain.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@

run-test-layered-plain: test-layered-plain.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@

run-test-cv-sparse: test-cv-sparse.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@

run-test-elias-sparse: test-elias-sparse.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@

run-test-layered-sparse: test-layered-sparse.cpp ../common.c ${MALLOC_COUNT_OBJ}
	$(CXX) ${MALLOC_COUNT_FLAGS} -std=gnu++17 -I../_external/compact_sparse_hash/include/ -I../_external/bit_span/include -ldl -O3 ${MALLOC_COUNT_FLAGS}  -Wall $< ${MALLOC_COUNT_LINK} -lglog  -o $@


clean:
	rm -f run-test*
