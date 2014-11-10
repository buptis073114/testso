NDK_ROOT=D:\eclipse-android\android-ndk-r9d
TOOLCHAINS_ROOT=$(NDK_ROOT)\toolchains\arm-linux-androideabi-4.6\prebuilt\windows
TOOLCHAINS_PREFIX=$(TOOLCHAINS_ROOT)\bin\arm-linux-androideabi
TOOLCHAINS_INCLUDE=$(TOOLCHAINS_ROOT)\lib\gcc\arm-linux-androideabi\4.6\include-fixed
PLATFORM_ROOT=$(NDK_ROOT)\platforms\android-19\arch-arm
PLATFORM_INCLUDE=$(PLATFORM_ROOT)\usr\include
PLATFORM_LIB=$(PLATFORM_ROOT)\usr\lib
MODULE_NAME=main
RM=del


FLAGS=-I$(TOOLCHAINS_INCLUDE) \
	-I$(PLATFORM_INCLUDE) \
	-L$(PLATFORM_LIB) \
	-nostdlib \
	-lgcc \
	-Bdynamic \
	-lc

OBJS=$(MODULE_NAME).o \
	$(PLATFORM_LIB)/crtbegin_dynamic.o \
	$(PLATFORM_LIB)/crtend_android.o 
all:
	$(TOOLCHAINS_PREFIX)-gcc $(FLAGS) -E $(MODULE_NAME).c -o $(MODULE_NAME).i
	$(TOOLCHAINS_PREFIX)-gcc $(FLAGS) -S $(MODULE_NAME).i -o $(MODULE_NAME).s
	$(TOOLCHAINS_PREFIX)-gcc $(FLAGS) -c $(MODULE_NAME).s -o $(MODULE_NAME).o
	$(TOOLCHAINS_PREFIX)-ld -shared -o librusteze.so $(MODULE_NAME).o
clean:
	$(RM) *.o