CC = gcc
INCS = -I/usr/include/SDL2
CFLAGS = -std=c89 -Wall
LIBS = $(shell sdl2-config --libs)

SRC_LEVEL = levels.c
OBJ_LEVELS = levels 

SRC_TILES = tiles.c
OBJ_TILES = tiles 

levels_extractor: $(SRC_LEVEL)
				echo "Building levels_extractor"
				$(CC) $(SRC_LEVEL) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_LEVELS)

tiles_extractor: $(SRC_TILES)
				echo "Building levels_extractor"
				$(CC) $(SRC_TILES) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_TILES)
clean :
		rm -r *.dat 
		rm -r *.bmp
		rm -r $(OBJ_LEVELS) 
		

