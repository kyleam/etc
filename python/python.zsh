if [[ $PYTHONPATH != $HOME/lib/python:* ]]; then
   export PYTHONPATH=$HOME/lib/python:$PYTHONPATH
fi

if [ $(whoami) != "root" ]; then
    export WORKON_HOME=$HOME/.pyenv
    source $(which virtualenvwrapper.sh) > /dev/null
fi

alias ipy='ipython'

alias pt2='py.test2'
alias pt='py.test'

alias ns2='nosetests2'
alias ns='nosetests'
