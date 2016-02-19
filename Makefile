all: run

output: run
	./run

run: main.c featureA.c featureB.c featureC.c featureD.c
	gcc -o run main.c featureA.c featureB.c featureC.c featureD.c

doc: main.c featureA.c featureB.c featureC.c featureD.c
	doxygen Doxyfile &> doxy-result.txt

clean:
	rm -f run

