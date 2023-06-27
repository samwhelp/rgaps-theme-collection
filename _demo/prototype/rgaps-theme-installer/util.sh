

################################################################################
### Head: Note
##

##
## # util.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Sys / Prepare
##

sys_prepare_cache_dir_path () {

	util_error_echo "mkdir -p ${THE_CACHE_DIR_PATH}"
	mkdir -p "${THE_CACHE_DIR_PATH}"

}

sys_prepare_cache_sub_dir_path () {

	local sub_dir_path="${1}"
	util_error_echo "mkdir -p ${THE_CACHE_DIR_PATH}"
	mkdir -p "${THE_CACHE_DIR_PATH}/${sub_dir_path}"

}

##
### Head: Sys / Prepare
################################################################################




################################################################################
### Head: Model / Config / gtk-theme / Gruvbox
##

mod_config_gtk_theme_gruvbox () {

	util_error_echo
	util_error_echo 'xfconf-query -c "xsettings" -p "/Net/ThemeName" -s "Gruvbox"'
	xfconf-query -c "xsettings" -p "/Net/ThemeName" -s "Gruvbox"

}

##
### Tail: Model / Config / gtk-theme  / Gruvbox
################################################################################


################################################################################
### Head: Model / Config / icon-theme / Gruvbox-Dark
##

mod_config_icon_theme_gruvbox_dark () {

	util_error_echo
	util_error_echo 'xfconf-query -c "xsettings" -p "/Net/IconThemeName" -s "Gruvbox-Dark"'
	xfconf-query -c "xsettings" -p "/Net/IconThemeName" -s "Gruvbox-Dark"

}

##
### Tail: Model / Config / icon-theme  / Gruvbox-Dark
################################################################################


################################################################################
### Head: Model / Config / cursor-theme / Breeze
##

mod_config_cursor_theme_breeze () {

	util_error_echo
	util_error_echo 'xfconf-query -c "xsettings" -p "/Gtk/CursorThemeName" -s "breeze_cursors"'
	xfconf-query -c "xsettings" -p "/Gtk/CursorThemeName" -s "breeze_cursors"

	util_error_echo
	util_error_echo 'xfconf-query -c "xsettings" -p "/Gtk/CursorThemeSize" -s "24"'
	xfconf-query -c "xsettings" -p "/Gtk/CursorThemeSize" -s "24"

}

##
### Tail: Model / Config / cursor-theme  / Breeze
################################################################################
