GIT_TOP=$(shell git rev-parse --show-toplevel 2>/dev/null)
UNAME := $(shell uname)
USER = $(shell id -u -n)

install:
	if [ '$(UNAME)' = 'Linux' ] || [ '$(UNAME)' = 'Darwin' ]; then echo "installing for ${USER}"; chmod 755 ${GIT_TOP}/bin/perli;\
	ln -s ${GIT_TOP}/bin/perli /usr/local/bin/perli; chown -R ${USER} /usr/local/bin/perli; fi

