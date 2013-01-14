# Makefile for the CS:APP Shell Lab

TEAM = NOBODY
VERSION = 1
TSH = ./tsh
TSHREF = ./tshref

CC = gcc
CFLAGS = -Wall -O2
FILES = $(TSH) ./myspin ./mysplit ./mystop ./myint

all: $(FILES)

##################
# Handin your work
##################
handin:
	~glancast/submit374 shlab tsh.c


##################
# Regression tests
##################

# Run each of 16 tests using the student's shell program or the reference shell
# Example: make test01
# Example: make test16

test%: mtest%.txt
	@echo
	@echo $@
	@cat how_tests.txt
	@cat m$@.txt

# clean up
clean:
	rm -f $(FILES) *.o *~


