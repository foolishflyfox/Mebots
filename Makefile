START := $(shell date +%s)

WEBOTS_HOME ?= $(shell pwd)

MAKECMDGOALS ?= release

.PHONY: clean release

test: webots_dependencies
	@+echo "#"; echo "# packaging"; echo "#"

webots_dependencies:
	@+echo "#"; echo "# * dependencies *"; echo "#"
	@+make --silent -C dependencies -f linux.mk $(MAKECMDGOALS)




