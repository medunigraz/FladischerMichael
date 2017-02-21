#!/bin/zsh

DOTFILES=.dotfiles
zmodload zsh/stat
setopt GLOB_DOTS

cd ~/${DOTFILES}/files
DIRS=(**/*(/N))
cd ~
[[ -n ${DIRS} ]] && mkdir -p -- ${DIRS}
cd ~/${DOTFILES}/files
for DOTFILE in **/*(.); do
    zstat -LH S ~/$DOTFILE
    [[ ${S}[link] != ~/${DOTFILES}/files/${DOTFILE} ]] && ln -sf ~/${DOTFILES}/files/${DOTFILE} ~/${DOTFILE}
done

popd 2>&1 >/dev/null
popd 2>&1 >/dev/null
