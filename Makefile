BASE_DIR = $(shell pwd)
REBAR    = $(BASE_DIR)/rebar
DIST	 = $(BASE_DIR)/rel/$(APP)

all: compile

compile: deps
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

update-deps:
	@$(REBAR) update-deps

xref:
	@$(REBAR) xref skip_deps=true

clean:
	@$(REBAR) clean

