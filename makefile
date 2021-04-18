CC = gcc
INCS = -I/usr/include/SDL2
CFLAGS = -std=c89 -Wall
LIBS = $(shell sdl2-config --libs)

SRC_LEVEL = utils/levels.c
OBJ_LEVELS = utils/levels 

SRC_TILES = utils/tiles.c
OBJ_TILES = utils/tiles 

SRC_EXAMPLE_GAME = example_game.c
OBJ_EXAMPLE_GAME = example_game

levels_extractor: $(SRC_LEVEL)
				echo "Building levels_extractor"
				$(CC) $(SRC_LEVEL) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_LEVELS)

tiles_extractor: $(SRC_TILES)
				echo "Building levels_extractor"
				$(CC) $(SRC_TILES) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_TILES)

example_game: $(SRC_EXAMPLE_GAME)
				echo "The example c89 Game"
				$(CC) $(SRC_EXAMPLE_GAME) $(INCS) $(LIBS) $(CFLAGS) -o $(OBJ_EXAMPLE_GAME)


clean :
		rm -r *.dat 
		rm -r *.bmp
		rm -r $(OBJ_LEVELS) 
		

