.PHONY: clean all run_geometry 
FLAGS := -std=c99
SRC_DIR := ./src
BIN_DIR := ./bin
OBJ_DIR := ./build

all: $(BIN_DIR)/geometry 

$(BIN_DIR)/geometry:  $(OBJ_DIR)/main.o  $(OBJ_DIR)/perimetr.o $(OBJ_DIR)/area.o $(OBJ_DIR)/intersection.o
	gcc -Wall -Wextra  $(OBJ_DIR)/main.o $(OBJ_DIR)/perimetr.o  $(OBJ_DIR)/area.o  $(OBJ_DIR)/intersection.o -o $(BIN_DIR)/geometry -lm $(FLAGS)

$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c
	gcc -Wall -Wextra -c  $(SRC_DIR)/main.c -o  $(OBJ_DIR)/main.o $(FLAGS)

$(OBJ_DIR)/intersection.o: $(SRC_DIR)/intersection.c
	gcc -Wall -Wextra -c  $(SRC_DIR)/intersection.c -o  $(OBJ_DIR)/intersection.o $(FLAGS)

$(OBJ_DIR)/area.o: $(SRC_DIR)/area.c
	gcc -Wall -Wextra -c  $(SRC_DIR)/area.c -o  $(OBJ_DIR)/area.o $(FLAGS)

$(OBJ_DIR)/perimetr.o: $(SRC_DIR)/perimetr.c
	gcc -Wall -Wextra -c  $(SRC_DIR)/perimetr.c -o  $(OBJ_DIR)/perimetr.o $(FLAGS)

clean:
	rm $(OBJ_DIR)/*.o	
	rm $(OBJ_TEST_DIR)/*.o	
	rm $(BIN_DIR)/geometry

run_geometry:
	$(BIN_DIR)/geometry
