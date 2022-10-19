decrypt: main.o crypto.o clock.o schedule.o
	gcc -g main.o crypto.o clock.o schedule.o -lpthread -lcrypto -g -o decrypt --std=c99
    
main.o: main.c
	gcc -g -c main.c -o main.o
    
crypto.o: crypto.c
	gcc -g -c crypto.c -o crypto.o
    
clock.o: clock.c
	gcc -g -c clock.c -o clock.o
    
schedule.o: schedule.c
	gcc -g -c schedule.c -o schedule.o
   
clean:
	rm decrypt results/* 
