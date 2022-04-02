.PHONY: all cls clean build run

all: cls clean build run

cls:
	@clear

clean:
	rm -rf work
	rm -rf out

build:
	mkarchiso -v .

run:
	run_archiso -u -i ./out/*.iso
