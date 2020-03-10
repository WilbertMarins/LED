default:
	clear
	flex -l test.l
	bison -dv test.y 
	gcc -o test test.tab.c lex.yy.c -lfl

clean:
	rm -rf test
	rm -rf test.output
	rm -rf test.tab.c
	rm -rf test.tab.h
	rm -f lex.yy.c