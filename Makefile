CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS = -lncurses
TARGET = game_of_life
SRC = game_of_life.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET) *.o

re: clean all

.PHONY: all clean re
