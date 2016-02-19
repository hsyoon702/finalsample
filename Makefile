CFLAGS=-Wall
LIBS=-lcheck

all: run

output: run
	./run

run: main.c featureA.c featureB.c featureC.c featureD.c
	gcc -o run main.c featureA.c featureB.c featureC.c featureD.c

test: testA testB testC testD
	./testA
	./testB
	./testC
	./testD

testA: featureA-test.c featureA.c
	gcc -o testA featureA.c featureA-test.c $(LIBS) -fprofile-arcs -ftest-coverage

featureA-test.c: featureA-test.check
	/usr/local/bin/checkmk featureA-test.check > featureA-test.c

testB: featureB-test.c featureB.c
	gcc -o testB featureB.c featureB-test.c $(LIBS) -fprofile-arcs -ftest-coverage

featureB-test.c: featureB-test.check
	/usr/local/bin/checkmk featureB-test.check > featureB-test.c

testC: featureC-test.c featureC.c
	gcc -o testC featureC.c featureC-test.c $(LIBS) -fprofile-arcs -ftest-coverage

featureC-test.c: featureC-test.check
	/usr/local/bin/checkmk featureC-test.check > featureC-test.c

testD: featureD-test.c featureD.c
	gcc -o testD featureD.c featureD-test.c $(LIBS) -fprofile-arcs -ftest-coverage

featureD-test.c: featureD-test.check
	/usr/local/bin/checkmk featureD-test.check > featureD-test.c

doc:
	doxygen Doxyfile &> doxy-result.txt

clean:
	rm -f run
	rm -f *test.c *.xml

