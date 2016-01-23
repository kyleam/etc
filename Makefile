STOW = stow
STOW_OPTS = -v --ignore=setup --no-folding -t ~

HOST := $(shell hostname)
host_dirs := $(shell find . -maxdepth 1 -type d -name "h-$(HOST)-*" -printf "%f ")

active = arch firefox font git haskell i3wm mpd \
	 python r shell system vim zathura zsh

stow: stow_host
	$(STOW) $(STOW_OPTS) $(active)

stow_host:
	$(STOW) $(STOW_OPTS) $(host_dirs)

unstow:
	$(STOW) $(STOW_OPTS) -D $(active)

.PHONY: stow unstow
