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
### Head: Model / Install / rgaps-all
##

mod_install_rgaps_all () {

	##
	## * [rgaps-all](https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-all)
	##

	mkdir -p "${HOME}/.cache/manual-install/rgaps-all"

	wget -c "https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/all.tar.gz" -O "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all.tar.gz"

	tar xf "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all.tar.gz" -C "${HOME}/.cache/manual-install/rgaps-all"

	cp -rf "${HOME}/.cache/manual-install/rgaps-all/rgaps-theme-collection-all/collection/xfwm-theme/themes/." "${HOME}/.themes"

}


##
### Tail: Model / Install / rgaps-all
################################################################################


################################################################################
### Head: Model / Install
##

mod_install () {

	mod_install_rgaps_all

	ls -1 "${HOME}/.themes"

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
