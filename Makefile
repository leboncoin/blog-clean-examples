TARGETS=bin/prog1

all: ${TARGETS}
.PHONY: clean

bin/%:
	mkdir -p bin
	echo "#/bin/bash" > $@
	echo "echo $@" > $@
	chmod +x $@

clean:
	- rm ${TARGETS}
