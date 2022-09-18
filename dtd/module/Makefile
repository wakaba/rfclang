BIN = ../../../tool/

PERL = perl

## <https://suika.suikawiki.org/gate/git/wi/markup/misc.git/blob/HEAD:/tool/mkdtds.pl>
MKDTDS = $(BIN)mkdtds.pl

all: rfc2629 rfc2629ja myns ed rfc2629bis

%: %.dms $(MKDTDS)
	$(PERL) $(MKDTDS) $<

## License: Public Domain.
