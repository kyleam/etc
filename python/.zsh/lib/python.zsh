if [[ $PYTHONPATH != $HOME/.local/lib/python:* ]]; then
   export PYTHONPATH=$HOME/.local/lib/python:$PYTHONPATH
fi

if [ $(whoami) != "root" ]; then
    export WORKON_HOME=$HOME/.pyenv
    source $(which virtualenvwrapper.sh) > /dev/null
fi

alias ipy='ipython'
alias ipyn='ipython notebook --matplotlib=inline'

alias pt2='py.test2'
alias pt='py.test'
alias ptd='py.test --doctest-modules'
alias ptd2='py.test2 --doctest-modules'

alias ns2='nosetests2'
alias ns='nosetests3'

alias psiu2='python2 setup.py install --user'
alias psdu2='python2 setup.py develop --user'
alias psiu='python setup.py install --user'
alias psdu='python setup.py develop --user'
