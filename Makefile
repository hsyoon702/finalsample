all: run

output: run
	./run

run: main.c featureA.c featureB.c featureC.c featureD.c
	gcc -o run main.c featureA.c featureB.c featureC.c featureD.c

clean:
	rm -f run

