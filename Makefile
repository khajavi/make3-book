VPATH = src
CPPFLAGS = -I include
CFLAGS = -I include

count_words: count_words.o counter.o lexer.o -lfl
	gcc $^ -o $@

count_words.o: count_words.c include/counter.h
	gcc $(CFLAGS) -c $<

counter.o: counter.c include/counter.h include/lexer.h
	gcc $(CFLAGS) -c $<

lexer.o: lexer.c include/lexer.h
	gcc  $(CFLAGS) -c $<

lexer.c: lexer.l
	flex -t $< > $@

clean:
	rm -f counter.o count_words count_words.o lexer.c lexer.o

.PHONY: clean
