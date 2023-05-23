CXX = gcc
CXXFLAGS = $(shell pkg-config --cflags opengl freeglut glesv2 glew glut gl glm) -Wall -w
LDFLAGS = $(shell pkg-config --libs opengl freeglut glesv2 glew glut gl glm)
#CXXFLAGS = opengl freeglut glesv2 glew glut gl -Wall
#CXXFLAGS = 
#LDFLAGS = -lGLESv2 -lGLEW -lEGL -lGLU -lOpenGL -lglut -lGL
#LDFLAGS = -lOpenGL -lGLESv2 -lGLEW -lGL -lX11 -lGLU -lGL -lglut
SOURCES := $(wildcard *.cpp)
#g++ main.cpp elf.cpp magicwand.cpp mesh.cpp myobj.cpp mytex.cpp robot.cpp std_image.cpp ../glad/glad.c -lOpenGL -lGLESv2 -lGLEW -lGL -lX11 -lGLU -lGL -lglut -w -o main
all: main

main: $(SOURCES)

.PHONY: clean
clean:
	rm -f *.o main
