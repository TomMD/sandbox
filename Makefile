COMMON_CFLAGS := -fPIC -Ilibseccomp/include

all: sandboxify

%.o: %.c
	$(CC) -c $(COMMON_CFLAGS) -o $@ $<

sandboxify: sandboxify.o sandbox.o
	$(CC) -o $@ $^ -lseccomp
