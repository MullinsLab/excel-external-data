SHELL := /bin/bash
export SHELLOPTS:=errexit:pipefail
.DELETE_ON_ERROR:
.SECONDARY:

external-data-blank.xlsx: $(shell find external-data-blank/ -type f)
	rm -f $@
	(cd external-data-blank/; zip -r ../$@ *)
