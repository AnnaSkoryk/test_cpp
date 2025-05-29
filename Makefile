# Compiler and flags
CC = g++
CFLAGS = -Wall -g

# Output executable
TARGET = main

# Source file(s)
SRC = main.cpp

# Object file(s)
OBJ = $(SRC:.cpp=.o)

# Default rule to build the program
all: $(TARGET)

# Rule to link the object files to create the executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to compile the .c file into a .o file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule to remove compiled files
clean:
	rm -f $(OBJ) $(TARGET)

# Rule to run the program (optional)
run: $(TARGET)
	./$(TARGET)
