# -*- Makefile -*-
#
# ----------------------------------------------------------------------
#
#                           Brad T. Aagaard
#                        U.S. Geological Survey
#
# {LicenseText}
#
# ----------------------------------------------------------------------
#

PROJECT = cencalvm
PACKAGE = query/examples/f77

include local.def

PROJ_SRCS = \
	cencalvmf77query.f \


PROJ_BIN = $(PROJ_BINDIR)/cencalvmf77query

TEST_ARGS = -d data/cencalvm-pre1.0.etree -i ../data/sample.in -o test.out -l test.log

# ----------------------------------------------------------------------
all: $(PROJ_BIN)

$(PROJ_BIN):: product_dirs $(PROJ_OBJS)
	$(F77) -o $@ $(LF77FLAGS) $(PROJ_OBJS)

test:
	@LD_LIBRARY_PATH=$$LD_LIBRARY_PATH:$(BLD_LIBDIR) $(PROJ_BIN) $(TEST_ARGS)

export:: export-binaries

tidy::
	BLD_ACTION="tidy" $(MM) recurse

clean::
	BLD_ACTION="clean" $(MM) recurse

EXPORT_BINS = $(PROJ_BIN)

# version
# $Id$

# End of file 
