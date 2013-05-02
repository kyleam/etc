"""Quick local and server setup
"""
import fabric.operations as fo
import fabric.context_managers as fc

import os

## In some cases, I have built zsh and I don't know how to set that
## version with `chsh`, so I am just sourcing zsh in my bashrc. This
## creates a mess if fabfile then loads the bashrc, so just use sh
fo.env.shell = '/bin/sh -l -c'

fo.env.use_ssh_config = True

config_dir = '~/.config'
etc_dir = os.path.join(config_dir, 'etc')
petc_dir = os.path.join(config_dir, 'petc')

rsync_cmd = ('rsync '
             '--delete '
             '--delete-excluded '
             '--progress -avzu '
             '-e ssh '
             '--exclude-from {rules} '
             '--prune-empty-dirs '
             '{src}/ {host}:"{dest}/"')
rsync_filter = 'server-filter'

link_cmd = './link-config'
collect_zsh_cmd = './collect-zsh-files'


## server

def create_config_dir():
    fo.run('mkdir -p ' + config_dir)


def sync():
    with fc.lcd(etc_dir):
        fo.local(rsync_cmd.format(rules=rsync_filter,
                                  src=etc_dir, dest=etc_dir,
                                  host=fo.env.host_string))


def collect_zsh_server():
    with fc.cd(etc_dir):
        fo.run(collect_zsh_cmd)


def link_server():
    with fc.cd(etc_dir):
        fo.run(link_cmd)


def setup_server():
    create_config_dir()
    sync()
    collect_zsh_server()
    link_server()


## local

def collect_zsh_local():
    with fc.lcd(etc_dir):
        fo.local(collect_zsh_cmd)


def link_local():
    with fc.lcd(etc_dir):
        fo.local(link_cmd)
    if petc_dir:
        with fc.lcd(petc_dir):
            fo.local(link_cmd)


def setup_local():
    collect_zsh_local()
    link_local()
