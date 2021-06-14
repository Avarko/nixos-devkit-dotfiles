eval "$(direnv hook bash)"
export DIRENV_LOG_FORMAT="`tput setaf 5`https://github.com/Avarko/nixos-devkit/wiki/%s`tput sgr0`"
#eval "keychain --eval --quiet --nogui --agents ssh --inherit any ~/.ssh/my-github-id_rsa"

if [ -n "$DESKTOP_SESSION" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
export BROWSER=/run/current-system/sw/bin/google-chrome-stable
alias config='/usr/bin/git --git-dir=/home/evolver/.cfg/ --work-tree=/home/evolver'
