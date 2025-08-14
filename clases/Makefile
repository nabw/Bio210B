SUBDIRS := $(wildcard */)
SUBDIRNAMES := $(subst /,,$(SUBDIRS))

.PHONY: all $(SUBDIRS) $(SUBDIRNAMES)

all: $(SUBDIRS) $(SUBDIRNAMES)

$(SUBDIRS):
	@if [ -f $@/Makefile ]; then \
		echo "Entering $@"; \
		$(MAKE) -C $@; \
	fi

$(SUBDIRNAMES):
	@if [ -f $@/Makefile ]; then \
		cp $@/$@.pdf slides/$@.pdf;  \
	fi
