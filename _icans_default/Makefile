REBAR=`which rebar || ./rebar`
APPDIRS=`ls apps`
all: get-deps compile docs
ci: clean get-deps compile docs test
list:
	@echo $(APPDIRS)
get-deps:
	@$(REBAR) get-deps
	@for dir in $(APPDIRS); do echo $$dir; $(MAKE) -C apps/$$dir get-deps; done
compile:
	@$(REBAR) compile
	@for dir in $(APPDIRS); do echo $$dir; $(MAKE) -C apps/$$dir compile; done
test:
	@for dir in $(APPDIRS); do echo $$dir; $(MAKE) -C apps/$$dir test; done
clean:
	@$(REBAR) clean
	@for dir in $(APPDIRS); do echo $$dir; $(MAKE) -C apps/$$dir clean; done
docs:
	@for dir in $(APPDIRS); do echo $$dir; $(MAKE) -C apps/$$dir docs; done
