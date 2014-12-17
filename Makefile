TARGET    = hello
OBJECT_01 = hello.o
SOURCE_01 = hello.c

$(TARGET): $(OBJECT_01)
	gcc -o $(TARGET) $(OBJECT_01)

$(OBJECT_01) : $(SOURCE_01)
	gcc -c $(SOURCE_01) -o $(OBJECT_01)

all : $(TARGET)

clean :
	-rm $(TARGET) $(OBJECT_01)
