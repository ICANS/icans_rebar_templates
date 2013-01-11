REBAR=`which rebar || ./rebar`
all: get-deps compile docs
ci: clean get-deps compile docs test
get-deps:
	@$(REBAR) get-deps
compile:
	@$(REBAR) compile
test:
	@$(REBAR) skip_deps=true eunit
clean:
	@$(REBAR) clean
docs:
	@$(REBAR) skip_deps=true doc
