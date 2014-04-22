STOW = stow
STOW_OPTS = -v --ignore=setup --no-folding -t ~

HOST := $(shell hostname)
host_dirs := $(shell find . -maxdepth 1 -type d -name "h-$(HOST)-*" -printf "%f ")
find_excl = \( ! -name "h-*" \) \( ! -name .git \)  \( ! -name . \)
args := $(shell find . -maxdepth 1 -type d $(find_excl)  -printf "%f ")
args += $(host_dirs)

stow:
	$(STOW) $(STOW_OPTS) $(args)

unstow:
	$(STOW) $(STOW_OPTS) -D $(args)

root-stow:
	$(STOW) $(STOW_OPTS) zsh bash git vim shell

.PHONY: stow unstow root-stow
