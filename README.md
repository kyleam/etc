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

To get this up and running, a few things need to happen:

1. set `ETC` in `zsh/zshrc` to the location of this repo. Any `*.zsh`
   files in subdirectories (one-level deep) will be sourced by `zshrc`
2. set `PETC` in `zsh/zshrc` to the location of any custom/private
   configuration files. `*.zsh` files contained within `PETC`
   subdirectories (one-level deep) will automatically be sourced.
3. run `link-config` to make symbolic links (if `PETC` contains files
   other than `*.zsh` files to be sourced, then something similar to
   `link-config` is needed to get them in the right place)
4. If you have settings that are specific for one machine, you can
   manage them by appending `-<hostname>` to the end of the file. If it
   is a `zsh` file (so `zsh-<hostname>`) it will be loaded by zsh when
   you're on the machine with that hostname. The `host_link` function in
   `link-config` is used to deal with non-zsh files.

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
