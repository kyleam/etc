STOW_CMD=stow
STOW_OPTS=-v --ignore=setup --no-folding -t ~

HOST=$(shell hostname)
HOST_DIRS:=$(shell find . -maxdepth 1 -type d -name "h-$(HOST)-*" -printf "%f ")
FIND_EXCL=\( ! -name "h-*" \) \( ! -name .git \)  \( ! -name . \)
ARGS:=$(shell find . -maxdepth 1 -type d $(FIND_EXCL)  -printf "%f ")
ARGS+=$(HOST_DIRS)

stow:
	$(STOW_CMD) $(STOW_OPTS) $(ARGS)

unstow:
	$(STOW_CMD) $(STOW_OPTS) -D $(ARGS)

root-stow:
	$(STOW_CMD) $(STOW_OPTS) zsh bash git vim shell

.PHONY: stow unstow root-stow
