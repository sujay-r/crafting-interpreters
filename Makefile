SRC_DIR = src
BIN_DIR = bin

# Java compiler and flags
JAVAC = javac
JFLAGS = -d $(BIN_DIR)

# Main class to run
MAIN_CLASS = com.craftinginterpreters.lox.Lox

# Phony targets (not actual files)
.PHONY: all clean run

# Default target
all:
	@mkdir -p $(BIN_DIR)
	$(JAVAC) $(JFLAGS) $(SRC_DIR)/com/craftinginterpreters/lox/*.java

# Clean compiled files
clean:
	rm -rf $(BIN_DIR)

# Run the application
run: all
	java -cp $(BIN_DIR) $(MAIN_CLASS)
