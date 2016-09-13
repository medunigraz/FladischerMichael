#
# Executes commands at the start of an interactive session.
#

#antigen
. /usr/share/zsh-antigen/antigen.zsh
antigen-use oh-my-zsh
antigen-bundle vi-mode
antigen-bundle git
antigen-bundle git-extras
antigen-bundle kennethreitz/autoenv
antigen-bundle django
antigen-bundle debian
antigen-bundle perl
antigen-bundle python
antigen-bundle rsync
antigen-bundle vundle
antigen-bundle cp
antigen-bundle postgres
antigen-bundle history
antigen-bundle screen
antigen-bundle supervisor
antigen-bundle svn
antigen-bundle systemd
antigen-bundle pep8
antigen-bundle bower
antigen-bundle celery
antigen-bundle colorize
antigen-bundle fabric
antigen-bundle npm
antigen-bundle systemadmin
antigen-bundle common-aliases
antigen-bundle tmux
#antigen-bundle per-directory-history
#antigen-bundle history-substring-search
antigen-bundle oknowton/zsh-dwim
antigen-bundle zsh-users/zsh-completions src
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-apply

autoload zmv

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
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
