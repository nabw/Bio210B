SUBDIRS := $(wildcard */)

.PHONY: all $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	@if [ -f $@/Makefile ]; then \
		echo "Entering $@"; \
		$(MAKE) -C $@; \
	fi

programa:
	libreoffice --headless --convert-to pdf Programa.docx
