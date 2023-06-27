#!/usr/bin/env bash


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/remove.sh

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"
THE_CONFIG_FILE_PATH="${THE_PLAN_DIR_PATH}/config.sh"
THE_UTIL_FILE_PATH="${THE_PLAN_DIR_PATH}/util.sh"

source "${THE_CONFIG_FILE_PATH}"
source "${THE_UTIL_FILE_PATH}"

##
### Tail: Init
################################################################################




################################################################################
### Head: Model / Remove / rgaps-blend
##

mod_remove_rgaps_blend () {

	util_error_echo "rm -rf ${HOME}/.themes/RGapsBlend"
	rm -rf "${HOME}/.themes/RGapsBlend"

}

##
### Tail: Model / Remove / rgaps-blend
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_rgaps_blend

	return 0

}

##
### Tail: Model / Remove
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	mod_remove

}

__main__

##
### Tail: Main
################################################################################
