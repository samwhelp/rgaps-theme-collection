#!/usr/bin/env bash


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/install.sh

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
### Head: Model / Prepare
##

mod_prepare () {

	mod_prepare_for_debian

	#mod_prepare_for_archlinux

}

mod_prepare_for_archlinux () {

	util_error_echo
	util_error_echo "sudo pacman -Sy --needed wget"
	util_error_echo

	sudo pacman -Sy --needed wget

}

mod_prepare_for_debian () {

	util_error_echo
	util_error_echo "sudo apt-get install wget"
	util_error_echo

	sudo apt-get install wget

}

##
### Tail: Model / Prepare
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	mod_prepare

}

__main__

##
### Tail: Main
################################################################################
