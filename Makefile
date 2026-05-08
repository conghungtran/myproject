# Compiler and flags
CC       = gcc
CFLAGS   = -Iinclude -Wall -Wextra
TARGET   = ./App

# Find all .c files recursively in src (including subdirectories)
SOURCES  = $(shell find src -name "*.c")
# Generate object files preserving directory structure
OBJECTS  = $(SOURCES:src/%.c=build/%.o)

# Default target
all: $(TARGET)

# Create build directory and link executable
$(TARGET): $(OBJECTS) | build
	$(CC) -o $@ $^

# Compile C files into object files (preserve directory structure)
build/%.o: src/%.c | build
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# Create build directory
build:
	mkdir -p $@

# Clean everything
clean:
	rm -rf build ./App

# Phony targets
.PHONY: all clean
