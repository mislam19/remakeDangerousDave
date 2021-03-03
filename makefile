CC = gcc
INCS = -I/usr/include/SDL2
CFLAGS = -std=c89 -Wall
LIBS = $(shell sdl2-config --libs)

SRC_LEVEL = levels.c
OBJ_LEVELS = levels 

levels_extractor: $(SRC_LEVEL)
				echo "Building levels_extractor"
				$(CC) $(SRC_LEVEL) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_LEVELS)

