etc - my configuration files
============================

Or dotfiles, if you really want.

The structure of the repo is inspired by Zach Holman's
[post](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
on his setup. It's organized by topics, and zsh will source any `*.zsh`
files it finds scattered through the directories. Symbolic links are
used to get files in the right location.

Setting it up
-------------

Two locations need to be set in `zsh/zshrc` and `fabfile.py`.

1. `ETC`, the main configuration directory (this repo). This is not
   `/etc`.
2. `PETC`, a private configuration directory

I keep both of these in `$HOME/.config`.

After this, run:

    fab setup_local

A few details
-------------

- `link-config` is the file that creates symbolic links between the
  configuration files and their destinations (usually either `$HOME` or
  `$XDG_CONFIG_HOME`). To add or remove files, this file should be
  edited. Both `ETC` and `PETC` have a `link-config` file.
- Files in `$ETC` and `$PETC` matching `*.zsh` will be added to
  `$ZSH_LIB`, which will be sourced by zsh. `$ZSH_LIB` is created by
  `collect-zsh-files`
- Machine-specific files are managed by appending `-<hostname>` to the
  end of the file. If it is a `zsh` file (so `*.zsh-<hostname>`), it
  will be linked to `$ZSH_LIB` when you're on the machine with that
  hostname. The `host_link` function in `link-config` is used to deal
  with non-zsh files.
- `fab setup_local` calls `collect-zsh-files` and `link-config` in both
  `$ETC` and `$PETC` directories. Using fabric makes it easy to transfer
  (a subset) of this config files to servers.

Thanks oh-my-zsh
----------------

A lot of the zsh configuration is lifted from
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). If you're not
familiar with that project, there's lots of great stuff there, so have a
look.

What's missing?
---------------

I've managed to wrangle most of my relevant configuration files into
this directory (or the corresponding private one). The main exception?
My [emacs.d files](https://github.com/kyleam/emacs.d) refuse to be
housed with mere config files. Snotty, yes ... but they've got a point,
so what can I do?


Comments, issues, or improvements?
----------------------------------

Please share.
