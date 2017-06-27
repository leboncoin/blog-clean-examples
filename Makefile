TARGETS=bin/prog1 bin/prog2

$(shell env TARGETS="${TARGETS}" ./cleanup.sh >&2)

all: ${TARGETS}
.PHONY: clean

bin/%:
	mkdir -p bin
	echo "#/bin/bash" > $@
	echo "echo $@" > $@
	chmod +x $@

clean:
	- rm ${TARGETS}
