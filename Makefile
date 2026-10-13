# Compilador cruzado para ARM64
CXX      := aarch64-linux-gnu-g++
CXXFLAGS := -Wall -Wextra -std=c++17

# Nombre del ejecutable
TARGET   := main

# Archivo fuente
SRC      := src/Hola_mundo.cpp

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)