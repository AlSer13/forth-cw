ASM 	= nasm
FLAGS 	= -felf64 -g -Isrc/
LINKER 	= ld

all: bin/eforthless

bin/eforthless: obj/eforthless.o obj/lib.o
	mkdir -p bin
	ld -o bin/eforthless obj/eforthless.o obj/lib.o

obj/eforthless.o: src/eforthless.asm src/words.inc src/macro.inc src/lib.inc src/interpreter.inc
	mkdir -p obj
	$(ASM) $(FLAGS) src/eforthless.asm -o obj/eforthless.o

obj/lib.o: src/lib.inc src/lib.asm
	mkdir -p obj
	$(ASM) $(FLAGS) src/lib.asm -o obj/lib.o

clean:
	rm -rf bin obj

.PHONY: all clean
