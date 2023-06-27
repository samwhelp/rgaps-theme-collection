

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
