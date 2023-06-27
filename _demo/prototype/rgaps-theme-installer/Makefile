

THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_PLAN_DIR_PATH := $(THE_BASE_DIR_PATH)
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin
THE_MAK_DIR_PATH := $(THE_BASE_DIR_PATH)/mak

PATH := $(THE_BIN_DIR_PATH):$(PATH)




default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make install-all'
	@echo
	@echo '	$$ make install-rgaps-black'
	@echo
	@echo '	$$ make install-rgaps-black-nobuttons'
	@echo
	@echo '	$$ make install-rgaps-blend'
	@echo
	@echo '	$$ make install-rgaps-blend-nobuttons'
	@echo
	@echo '	$$ make install-rgaps-line'
	@echo
	@echo '	$$ make install-rgaps-line-nobuttons'
	@echo
	@echo '	$$ make remove-all'
	@echo

.PHONY: help


prepare:
	@$(THE_PLAN_DIR_PATH)/prepare.sh
.PHONY: prepare


install-all:
	@$(THE_PLAN_DIR_PATH)/install-all.sh
.PHONY: install-all


install-rgaps-black:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-black.sh
.PHONY: install-rgaps-black


install-rgaps-black-nobuttons:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-black-nobuttons.sh
.PHONY: install-rgaps-black-nobuttons


install-rgaps-blend:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-blend.sh
.PHONY: install-rgaps-blend


install-rgaps-blend-nobuttons:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-blend-nobuttons.sh
.PHONY: install-rgaps-blend-nobuttons


install-rgaps-line:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-line.sh
.PHONY: install-rgaps-line


install-rgaps-line-nobuttons:
	@$(THE_PLAN_DIR_PATH)/install-rgaps-line-nobuttons.sh
.PHONY: install-rgaps-line-nobuttons




remove-all:
	@$(THE_PLAN_DIR_PATH)/remove-all.sh
.PHONY: remove-all


remove-rgaps-black:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-black.sh
.PHONY: remove-rgaps-black


remove-rgaps-black-nobuttons:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-black-nobuttons.sh
.PHONY: remove-rgaps-black-nobuttons


remove-rgaps-blend:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-blend.sh
.PHONY: remove-rgaps-blend


remove-rgaps-blend-nobuttons:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-blend-nobuttons.sh
.PHONY: remove-rgaps-blend-nobuttons


remove-rgaps-line:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-line.sh
.PHONY: remove-rgaps-line


remove-rgaps-line-nobuttons:
	@$(THE_PLAN_DIR_PATH)/remove-rgaps-line-nobuttons.sh
.PHONY: remove-rgaps-line-nobuttons




##
## ## include
##

#include $(THE_MAK_DIR_PATH)/*.mk
