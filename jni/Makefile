APP=a
NDK_ROOT=D:\eclipse-android\android-ndk-r9d
TOOLCHAINS_ROOT=$(NDK_ROOT)\toolchains\arm-linux-androideabi-4.6\prebuilt\windows
TOOLCHAINS_PREFIX=$(TOOLCHAINS_ROOT)\bin\arm-linux-androideabi
TOOLCHAINS_INCLUDE=$(TOOLCHAINS_ROOT)\lib\gcc\arm-linux-androideabi\4.6\include-fixed
PLATFORM_ROOT=$(NDK_ROOT)\platforms\android-19\arch-arm
PLATFORM_INCLUDE=$(PLATFORM_ROOT)\usr\include
PLATFORM_LIB=$(PLATFORM_ROOT)\usr\lib
CC := $(TOOLCHAINS_PREFIX)-gcc
CPP := $(TOOLCHAINS_PREFIX)-g++
AR = $(TOOLCHAINS_PREFIX)-ar
AS = $(TOOLCHAINS_PREFIX)-as
CC = $(TOOLCHAINS_PREFIX)-gcc
CXX = $(TOOLCHAINS_PREFIX)-g++
LD = $(TOOLCHAINS_PREFIX)-ld.gold

FLAGS=-I$(TOOLCHAINS_INCLUDE) \
	-I$(PLATFORM_INCLUDE) \
	-L$(PLATFORM_LIB) \
	-fPIC \
	-shared \
	-llog \

OBJS=$(PLATFORM_LIB)/crtbegin_dynamic.o \
	$(PLATFORM_LIB)/crtend_android.o 

OBJS=$(PLATFORM_LIB)/crtbegin_so.o \
	$(PLATFORM_LIB)/crtend_so.o 

MODULE_NAME=main

CFLAGS  = -Wall -g
LDFLAGS = -llog -shared
SRC =main.c
OBJ =$(SRC:.c=.o)
EXE =librusteze.so

all:
	$(CC) -E $(MODULE_NAME).c $(FLAGS) -o $(MODULE_NAME).i
	$(CC) -S $(MODULE_NAME).i $(FLAGS) -o $(MODULE_NAME).s
	$(CC) -c $(MODULE_NAME).s $(FLAGS) -o $(MODULE_NAME).o
	$(CC) $(MODULE_NAME).o $(FLAGS) -o $(EXE)
	$(TOOLCHAINS_PREFIX)-strip $(EXE)

clean:
	rm -f $(OBJS) $(EXES)