SRC_DIR = src
BIN_DIR = bin

SOURCES := $(shell find $(SRC_DIR) -name '*.java')
CLASSES := $(SOURCES:$(SRC_DIR)/%.java=$(BIN_DIR)/%.class)

JAVAC = javac
JFLAGS = -d $(BIN_DIR)

.PHONY: all clean run

all: $(BIN_DIR)
	$(JAVAC) $(JFLAGS) $(SOURCES)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR)

run: all
	java -cp $(BIN_DIR) com.craftinginterpreters.lox.Lox
