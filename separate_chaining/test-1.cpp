#include "../common.c"

#include "external/include/separate/separate_chaining_table.hpp"
#include "external/include/separate/size.hpp"

struct Hash32 {
	inline size_t operator()(const uint32_t x) const {
		return hash32(x);
	}
};

void test_int(uint32_t n, uint32_t x0)
{
	using namespace separate_chaining;
	uint32_t i, x, z = 0;
	separate_chaining_map<plain_bucket<uint32_t>, plain_bucket<uint32_t>, hash_mapping_adapter<uint32_t, Hash32>, incremental_resize> h;
	// spp::sparse_hash_map<uint32_t, uint32_t, Hash32> h;
	for (i = 0, x = x0; i < n; ++i) {
		x = hash32(x);
		z += ++h[get_key(n, x)];
	}
	fprintf(stderr, "# unique keys: %ld; checksum: %u\n", h.size(), z);
}
