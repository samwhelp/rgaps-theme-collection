#!/usr/bin/env bash


################################################################################
### Head: Note
##

## * https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/project/bin/config.sh

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
### Head: Model / Config / xfwm-theme / rgaps-line
##

mod_config_xfwm_theme_rgaps_line () {

	util_error_echo 'xfconf-query -c "xfwm4" -p "/general/theme" -s "RGapsLine"'
	xfconf-query -c "xfwm4" -p "/general/theme" -s "RGapsLine"

}

##
### Tail: Model / Config / xfwm-theme / rgaps-line
################################################################################


################################################################################
### Head: Model / Config
##

mod_config () {

	mod_config_xfwm_theme_rgaps_line
	mod_config_gtk_theme_gruvbox
	mod_config_icon_theme_gruvbox_dark
	mod_config_cursor_theme_breeze

	return 0

}

##
### Tail: Model / Config
################################################################################




################################################################################
### Head: Main
##

__main__ () {

	mod_config

}

__main__

##
### Tail: Main
################################################################################
