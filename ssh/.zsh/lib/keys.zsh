if [ $(whoami) != "root" ]; then
    eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
fi
