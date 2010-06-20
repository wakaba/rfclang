BIN = ../../tool/

PERL = perl 
MKDTDS = $(BIN)mkdtds.pl

all: rfc2629.dtd rfc2629ja.dtd

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
