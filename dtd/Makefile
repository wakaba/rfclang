BIN = ../../tool/

PERL = perl 

## <https://suika.suikawiki.org/gate/git/wi/markup/misc.git/blob/HEAD:/tool/mkdtds.pl>
MKDTDS = $(BIN)mkdtds.pl

all: rfc2629.dtd rfc2629ja.dtd

%.dtd: %.dds $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
