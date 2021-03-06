#include "../common.c"

#include <tudocomp/util/compact_hash/map/typedefs.hpp>

struct Hash32 {
	inline size_t operator()(const uint32_t x) const {
		return hash32(x);
	}
};

void test_int(uint32_t n, uint32_t x0)
{
	using namespace tdc::compact_hash::map;
	uint32_t i, x, z = 0;
	plain_cv_hashmap_t<uint32_t> h(32);
	// spp::sparse_hash_map<uint32_t, uint32_t, Hash32> h;
	for (i = 0, x = x0; i < n; ++i) {
		x = hash32(x);
		z += ++h[get_key(n, x)];
	}
	fprintf(stderr, "# unique keys: %ld; checksum: %u\n", h.size(), z);
}
