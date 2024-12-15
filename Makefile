

default: help
.PHONY: default


help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make deb-build-essential'
	@echo
	@echo '	$$ make deb-build-dep'
	@echo
	@echo '	$$ make deb-build'
	@echo
.PHONY: help




deb-build-essential:
	sudo apt-get --yes install git devscripts equivs
.PHONY: deb-build-essential




deb-build-dep:
	sudo mk-build-deps -i -t "apt-get -y" -r
.PHONY: deb-build-dep




deb-build:
	dpkg-buildpackage -b -uc -us -tc
.PHONY: deb-build
