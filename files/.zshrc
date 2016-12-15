#
# Executes commands at the start of an interactive session.
#

export AUTOENV_FILE_ENTER=.env
export AUTOENV_FILE_LEAVE=.unenv

#antigen
. /usr/share/zsh-antigen/antigen.zsh
antigen-use oh-my-zsh
antigen-bundle bower
antigen-bundle celery
antigen-bundle colorize
antigen-bundle common-aliases
antigen-bundle django
antigen-bundle fabric
antigen-bundle git
antigen-bundle git-extras
antigen-bundle npm
antigen-bundle pep8
antigen-bundle perl
antigen-bundle postgres
antigen-bundle python
antigen-bundle rsync
antigen-bundle supervisor
antigen-bundle systemadmin
antigen-bundle systemd
antigen-bundle tmux
antigen-bundle vi-mode
antigen-bundle vundle
antigen-bundle oknowton/zsh-dwim
antigen-bundle zsh-users/zsh-completions
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle zsh-users/zsh-autosuggestions
antigen-bundle Tarrasch/zsh-autoenv
antigen-apply

autoload zmv

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
for keycode in '[' '0'; do
    bindkey "^[${keycode}A" history-substring-search-up
    bindkey "^[${keycode}B" history-substring-search-down
done
unset keycode

setopt extendedglob

# Suffix Aliases
# Global Aliases
alias -g E=/etc Lsyslog=/var/log/syslog

~/.dotfiles/install.zsh

unsetopt correctall
export PATH="$PATH:$HOME/bin"

. /usr/share/powerline/bindings/zsh/powerline.zsh
