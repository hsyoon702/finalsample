#include <stdio.h>

#include "featureA.h"
#include "featureB.h"
#include "featureC.h"
#include "featureD.h"

int main()
{
	int a, b, c, d;

	a = feature_a(3, 4);
	b = feature_b(1, a);
	c = feature_c(2, b);
	d = feature_d(0, c);

	printf("featureA: %d\n", a);
	printf("featureB: %d\n", b);
	printf("featureC: %d\n", c);
	printf("featureD: %d\n", d);
dddddddddddddddddddddd
	return 0;
}

