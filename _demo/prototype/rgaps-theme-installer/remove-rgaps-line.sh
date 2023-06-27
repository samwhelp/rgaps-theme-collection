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
### Head: Model / Remove / rgaps-line
##

mod_remove_rgaps_line () {

	util_error_echo "rm -rf ${HOME}/.themes/RGapsLine"
	rm -rf "${HOME}/.themes/RGapsLine"

}

##
### Tail: Model / Remove / rgaps-line
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_rgaps_line

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
