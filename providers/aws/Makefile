#
# This is the Makefile used to build new environments
#
####################################################################
#
# The environments follow the following structure
#
#  .
#  └── providers
#      └── aws
#          ├── Makefile        <-- you are here!
#          ├── dev
#          ├── management
#          ├── prod
#          └── staging
#  
####################################################################
#
# The following commands have been configured for macOS,
# if you're unsure what they do; RTFM
# Feel free to write a Linux or Windoze version if you
# feel moved to do so.
#
BIN	:= /bin
SHELL	:= $(BIN)/bash
ECHO	:= $(BIN)/echo
COPY	:= $(BIN)/cp
RM	:= $(BIN)/rm
#
USRBIN	:= /usr/bin
TAR	:= $(USRBIN)/tar
#
####################################################################
#
# At the moment the only provider is AWS, but that may change
#
PROVIDER := aws
#
#####################################################################
#
#
# The current standard is that a new project gets three environments 
#
ENVIRONMENTS := dev staging prod
#
####################################################################
#
# Main stuff starts here:

$(ENVIRONMENTS):
	@$(ECHO) -n Building $@...
	@(cd ../../../template/providers/$(PROVIDER) ; $(TAR) cf - $@) | \
		$(TAR) xf -
	@$(COPY) ../../../template/variables.tf $@
	@$(ECHO) done

#
####################################################################

clean:
	$(ECHO) -n cleaning up...
	$(RM) -rf $(ENVIRONMENTS)
	$(ECHO) done

.PHONY:		clean
