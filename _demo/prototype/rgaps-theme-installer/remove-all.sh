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
### Head: Model / Remove / All
##

mod_remove_all () {


	mod_remove_all_by_each

	#mod_remove_all_by_star

}

mod_remove_all_by_star () {

	rm -rf ~/.themes/RGaps*

	return 0

}

mod_remove_all_by_each () {

	rm -rf "${HOME}/.themes/RGapsBlack"
	rm -rf "${HOME}/.themes/RGapsBlackNoButtons"
	rm -rf "${HOME}/.themes/RGapsBlend"
	rm -rf "${HOME}/.themes/RGapsBlendNoButtons"
	rm -rf "${HOME}/.themes/RGapsLine"
	rm -rf "${HOME}/.themes/RGapsLineNoButtons"


	return 0

}


##
### Tail: Model / Remove / All
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_all

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
