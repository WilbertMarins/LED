default:
	make clean
	clear
	flex t.l
	cc lex.yy.c -lfl
	./a.out
clean:
	rm -rf t
	rm -rf t.output
	rm -rf t.tab.c
	rm -rf t.tab.h
	rm -f lex.yy.c
	rm -f a.out