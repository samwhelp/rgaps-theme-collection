#!/usr/bin/env bash

##set -e


################################################################################
### Head: Note
##

##
## # rgaps-theme-collection
##
## * [rgaps-theme-collection](https://github.com/samwhelp/rgaps-theme-collection)
##

##
## ``` sh
## wget -c 
## ```
##

##
### Tail: Note
################################################################################




################################################################################
### Head: sys_repo_clone
##

##
## * https://github.com/samwhelp/rgaps-theme-collection
##

sys_repo_clone () {

	local repo_name="rgaps-theme-collection"
	local repo_branch="${1}"
	local save_dir_name="${repo_name}-${repo_branch}"

	git clone -b "${repo_branch}" "git@github.com:samwhelp/${repo_name}.git" "${save_dir_name}"

	cd "${save_dir_name}"

	git config user.name samwhelp
	git config user.email samwhelp@users.noreply.github.com

	cd "${OLDPWD}"

}


sys_repo_clone_gh_pages () {

	git clone -b gh-pages git@github.com:samwhelp/rgaps-theme-collection.git rgaps-theme-collection-gh-pages

	cd rgaps-theme-collection-gh-pages

	git config user.name samwhelp
	git config user.email samwhelp@users.noreply.github.com

	cd "${OLDPWD}"

}

##
### Tail: sys_repo_clone
################################################################################




################################################################################
### Head: branch / gh-pages
##

##
## * https://github.com/samwhelp/rgaps-theme-collection
##

mod_clone_branch_gh_pages () {

	sys_repo_clone "gh-pages"

}

##
### Tail: branch / gh-pages
################################################################################




################################################################################
### Head: branch / main
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/main
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/main.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/main.tar.gz
##

mod_clone_branch_main () {

	sys_repo_clone "main"

}

##
### Tail: branch / main
################################################################################




################################################################################
### Head: branch / all
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/all
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/all.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/all.tar.gz
##

mod_clone_branch_all () {

	sys_repo_clone "all"

}

##
### Tail: branch / all
################################################################################




################################################################################
### Head: branch / rgaps-black
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-black
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-black.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-black.tar.gz
##

mod_clone_branch_rgaps_black () {

	sys_repo_clone "rgaps-black"

}

##
### Tail: branch / rgaps-black
################################################################################




################################################################################
### Head: branch / rgaps-black-nobuttons
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-black-nobuttons
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-black-nobuttons.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-black-nobuttons.tar.gz
##

mod_clone_branch_rgaps_black_nobuttons () {

	sys_repo_clone "rgaps-black-nobuttons"

}

##
### Tail: branch / rgaps-black-nobuttons
################################################################################




################################################################################
### Head: branch / rgaps-blend
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-blend
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-blend.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-blend.tar.gz
##

mod_clone_branch_rgaps_blend () {

	sys_repo_clone "rgaps-blend"

}

##
### Tail: branch / rgaps-blend
################################################################################




################################################################################
### Head: branch / rgaps-blend-nobuttons
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-blend-nobuttons
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-blend-nobuttons.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-blend-nobuttons.tar.gz
##

mod_clone_branch_rgaps_blend_nobuttons () {

	sys_repo_clone "rgaps-blend-nobuttons"

}

##
### Tail: branch / rgaps-blend-nobuttons
################################################################################




################################################################################
### Head: branch / rgaps-line
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-line
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-line.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-line.tar.gz
##

mod_clone_branch_rgaps_line () {

	sys_repo_clone "rgaps-line"

}

##
### Tail: branch / rgaps-line
################################################################################




################################################################################
### Head: branch / rgaps-line-nobuttons
##

##
## * https://github.com/samwhelp/rgaps-theme-collection/tree/rgaps-line-nobuttons
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-line-nobuttons.zip
## * https://github.com/samwhelp/rgaps-theme-collection/archive/refs/heads/rgaps-line-nobuttons.tar.gz
##

mod_clone_branch_rgaps_line_nobuttons () {

	sys_repo_clone "rgaps-line-nobuttons"

}

##
### Tail: branch / rgaps-line-nobuttons
################################################################################




################################################################################
### Head: repo_clone
##

main_repo_clone () {

	mod_clone_branch_gh_pages
	mod_clone_branch_main
	mod_clone_branch_all
	
	mod_clone_branch_rgaps_black
	mod_clone_branch_rgaps_black_nobuttons
	
	mod_clone_branch_rgaps_blend
	mod_clone_branch_rgaps_blend_nobuttons
	
	mod_clone_branch_rgaps_line
	mod_clone_branch_rgaps_line_nobuttons


	return 0

}

##
### Tail: repo_clone
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_repo_clone

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
