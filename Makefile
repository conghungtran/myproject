# Compiler and flags
CC       = gcc
CFLAGS   = -Iinclude -Wall -Wextra
TARGET   = ./App
SOURCES  = $(wildcard src/*.c)
OBJECTS  = $(SOURCES:src/%.c=build/%.o)

# Default target
all: $(TARGET)

# Create build directory and link executable
$(TARGET): $(OBJECTS) | build
	$(CC) -o $@ $^

# Compile C files into object files
build/%.o: src/%.c | build
	$(CC) $(CFLAGS) -c $< -o $@

# Create build directory
build:
	mkdir -p $@

# Clean everything
clean:
	rm -rf build ./App

# Phony targets
.PHONY: all clean
