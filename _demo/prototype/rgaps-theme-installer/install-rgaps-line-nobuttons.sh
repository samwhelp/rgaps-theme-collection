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
### Head: Model / Install / rgaps-line-nobuttons
##

mod_install_rgaps_line_nobuttons () {

	##
	## * [rgaps-line-nobuttons](https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-line-nobuttons)
	##

	mkdir -p "${HOME}/.cache/manual-install/rgaps-line-nobuttons"

	wget -c "https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-line-nobuttons.tar.gz" -O "${HOME}/.cache/manual-install/rgaps-line-nobuttons/rgaps-theme-collection-rgaps-line-nobuttons.tar.gz"

	tar xf "${HOME}/.cache/manual-install/rgaps-line-nobuttons/rgaps-theme-collection-rgaps-line-nobuttons.tar.gz" -C "${HOME}/.cache/manual-install/rgaps-line-nobuttons"

	cp -rf "${HOME}/.cache/manual-install/rgaps-line-nobuttons/rgaps-theme-collection-rgaps-line-nobuttons/." "${HOME}/.themes/RGapsLineNoButtons"

}


##
### Tail: Model / Install / rgaps-line-nobuttons
################################################################################


################################################################################
### Head: Model / Install
##

mod_install () {

	mod_install_rgaps_line_nobuttons

	return 0

}

##
### Tail: Model / Install
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	mod_install

}

__main__

##
### Tail: Main
################################################################################
