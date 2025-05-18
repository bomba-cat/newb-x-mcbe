.PHONY: run pack mats setup clean

LIB_PATH=./tool/lib
ENTRY=tool

export LD_LIBRARY_PATH := $(LIB_PATH)

run:
	python3 $(ENTRY)

pack mats setup:
	python3 $(ENTRY) $@ $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

# To prevent errors on extra args
%:
	@:
