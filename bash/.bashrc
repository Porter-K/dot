#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Own entries
eval "$(zoxide init bash)"
alias ls='exa'
alias la='exa -la'
alias tree='exa --tree -la'
source /usr/share/doc/pkgfile/command-not-found.bash
alias bashrc='nvim ~/.bashrc'
alias docs='bash ~/Programming/Projects/devdocs.sh'
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
export EDITOR='/usr/bin/nvim'
PATH=/usr/local/texlive/2024/bin/x86_64-linux:/home/kyleporter/.local/share/gem/ruby/3.3.0/bin:$PATH
export PATH
MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH
export MANPATH
INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH
export INFOPATH
alias fetch='fastfetch'

HISTSIZE=2000
HISTFILESIZE=2000

eval "$(thefuck --alias)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
