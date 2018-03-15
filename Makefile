
PROGRAMS=	tlsver

SOURCES=	tlsver.c \
		Makefile

OBJECTS=	tlsver.o

CFLAGS=		-g

CC=		cc
LD=		cc

all:	$(PROGRAMS)

tlsver:	$(SOURCES) $(OBJECTS)
	$(LD) $(CFLAGS) tlsver.o -o tlsver

tlsver.o:	$(SOURCES)
	$(CC) $(CFLAGS) -c tlsver.c

install:	$(PROGRAMS)
	cp tlsver /usr/bin/tlsver

wc:
	wc -l $(SOURCES)

clean:
	-rm tlsver.o
	-rm tlsver
	-rm *~
