install: bali_score 

clean:
	rm *.o

HEADERS = general.h clustalw.h

CC	= cc
CFLAGS  = -c -O 
LFLAGS  = -O -lm -lexpat


bali_score : readxml.o init.o util.o bali_score.o
	$(CC) -o $@ readxml.o init.o util.o bali_score.o $(LFLAGS)


.c.o :	$(HEADERS)
	$(CC) $(CFLAGS) $?

