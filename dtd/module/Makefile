BIN = ../../../tool/

PERL = perl
MKDTDS = $(BIN)mkdtds.pl

all: rfc2629 rfc2629ja myns ed rfc2629bis

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
