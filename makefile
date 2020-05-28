.PHONY: clean all run_geometry 
FLAGS := -std=c99
SRC_DIR := ./src
BIN_DIR := ./bin
OBJ_DIR := ./build
OBJ_TEST_DIR := ./build/test
TEST_DIR := ./test

all: $(BIN_DIR)/geometry $(BIN_DIR)/testing

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

$(OBJ_TEST_DIR)/main.o: $(TEST_DIR)/main.c
	gcc -I thirdparty -I src -c $(TEST_DIR)/main.c -o  $(OBJ_TEST_DIR)/main.o $(FLAG)

$(OBJ_TEST_DIR)/area_test.o: $(TEST_DIR)/area_test.c
	gcc -I thirdparty -I src -c $(TEST_DIR)/area_test.c -o  $(OBJ_TEST_DIR)/area_test.o $(FLAG)

$(OBJ_TEST_DIR)/perimetr_test.o: $(TEST_DIR)/perimetr_test.c
	gcc -I thirdparty -I src -c $(TEST_DIR)/perimetr_test.c -o  $(OBJ_TEST_DIR)/perimetr_test.o $(FLAG)

$(OBJ_TEST_DIR)/intersection_test.o: $(TEST_DIR)/intersection_test.c
	gcc -I thirdparty -I src -c $(TEST_DIR)/intersection_test.c -o  $(OBJ_TEST_DIR)/intersection_test.o $(FLAG)

clean:
	rm $(OBJ_DIR)/*.o	
	rm $(OBJ_TEST_DIR)/*.o	
	rm $(BIN_DIR)/geometry
	rm $(BIN_DIR)/testing

run_geometry:
	$(BIN_DIR)/geometry

run_testing: 
	$(BIN_DIR)/testing
