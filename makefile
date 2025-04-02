dodawanie: dodawanie.o
	ld -m elf_i386 dodawanie.o -o dodawanie

odejmowanie: odejmowanie.o
	ld -m elf_i386 odejmowanie.o -o odejmowanie

dodawanie.o: dodawanie.s
	as --32 --gstabs dodawanie.s -o dodawanie.o

odejmowanie.o: odejmowanie.s
	as --32 --gstabs odejmowanie.s -o odejmowanie.o

clean:
	rm -f dodawanie.o dodawanie
	rm -f odejmowanie.o odejmowanie
