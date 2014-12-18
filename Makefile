TARGET_    = hello
OBJECT_01 = hello.o
SOURCE_01 = hello.c

$(TARGET_): $(OBJECT_01)
	gcc -o $(TARGET_) $(OBJECT_01)

$(OBJECT_01) : $(SOURCE_01)
	gcc -c $(SOURCE_01) -o $(OBJECT_01)

all : $(TARGET_)

clean :
	-rm $(TARGET_) $(OBJECT_01)
