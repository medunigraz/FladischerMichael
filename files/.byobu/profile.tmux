source $BYOBU_PREFIX/share/byobu/profiles/tmux
#set -g default-terminal "screen-256color-bce"
set -g default-terminal "screen-256color"
set -g terminal-overrides "xterm*:colors=256"
set-window-option -g xterm-keys on
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
