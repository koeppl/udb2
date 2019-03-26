#include "../common.c"
#include "../_external/rigtorp/include/rigtorp/HashMap.h"

struct Hash32 {
	inline size_t operator()(const uint32_t x) const {
		return hash32(x);
	}
};

void test_int(uint32_t n, uint32_t x0)
{
	uint32_t i, x, z = 0;
	rigtorp::HashMap<uint32_t, uint32_t> h(0, static_cast<uint32_t>(0xfffffffeu));
	// h.set_deleted_key(0xfffffffeu);
	for (i = 0, x = x0; i < n; ++i) {
		x = hash32(x);
		z += ++h[get_key(n, x)];
	}
	fprintf(stderr, "# unique keys: %ld; checksum: %u\n", h.size(), z);
}
