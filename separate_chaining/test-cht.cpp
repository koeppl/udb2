#include "../common.c"

#include "external/include/separate/compact_chaining_map.hpp"
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
	compact_chaining_map<xorshift_hash<>, uint8_t> h(32,32);
	// spp::sparse_hash_map<uint32_t, uint32_t, Hash32> h;
	for (i = 0, x = x0; i < n; ++i) {
		x = hash32(x);
		auto val = h[get_key(n, x)];
		val = size_t(val)+1;
		z += val;
	}
	fprintf(stderr, "# unique keys: %ld; checksum: %u\n", h.size(), z);
}
