#include <ap_int.h>

void Hello2(ap_uint<4> a, ap_uint<4> b,
		ap_uint<4> *sum, ap_uint<1> *c_out)
{
	unsigned sum5 = a + b;

	*sum = sum5;
	*c_out = sum5 >> 4;
}
