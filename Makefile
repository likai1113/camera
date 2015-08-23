APP = camera_h264encode

CC = gcc
LIBS = -lpthread -lx264 -lm 
OBJS = main.o video_capture.o h264encoder.o

all:  $(OBJS)
	$(CC) -g -o $(APP) $(OBJS) $(LIBS) 

clean:
	rm -f *.o $(APP) 
