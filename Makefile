fb3-2: fb3-2.l fb3-2.y fb3-2funcs.c fb3-2.h
	bison -d fb3-2.y
	flex -o fb3-2.lex.c fb3-2.l
	cc -o $@ fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c -lm
clean:
	rm -f fb3-2 fb3-2.tab.c fb3-2.tab.h fb3-2.lex.c
