## linked arch ipython -> ipython3
## my general strategy for dealing with debian and arch's different
## treatment of the default python is to link python to python2 in
## debian and python to python3 in arch, and then just try to remember
## to specify the number
alias ipy='ipython3'

if [[ $PYTHONPATH != $HOME/lib/python:* ]]; then
   export PYTHONPATH=$HOME/lib/python:$PYTHONPATH
fi
