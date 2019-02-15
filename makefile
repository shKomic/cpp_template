COMPILER 	= g++
EXTENSION = cpp
CPP_FLAGS = -g -Wall
LIBS 			= ./include/$(wildcard *.hpp)
OBJ_DIR		= ./objs/
SOURCES 	= $(wildcard ./src/*.cpp)
OBJECTS		= $(SOURCES: .cpp=.o)
INCLUDE 	= -I ./include

TARGET_FILE = $(shell ls | grep ${TARGET})

#PHONY: clean run

$(OBJ_DIR)%.o: $(SOURCES)
	$(COMPILER) $(CPP_FLAGS) $(INCLUDE) -o $@ -c $^

$(TARGET): $(OBJECTS)
	$(COMPILER) $(CPP_FLAGS) $(OBJECTS) -o $(TARGET)

clean:
	rm -f $(TARGET)
