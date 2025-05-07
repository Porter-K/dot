source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit && compinit

export _ZO_ECHO='1'
eval "$(zoxide init zsh)"
# alias ls='exa'
# alias la='exa -la'
# alias tree='exa --tree -la'
source /usr/share/doc/pkgfile/command-not-found.zsh
alias zshconfig="nvim ~/.zshrc"
export EDITOR='/usr/bin/nvim'
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=100000
# setopt SHARE_HISTORY

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"


# LaTex
PATH=/usr/local/texlive/2024/bin/x86_64-linux:/home/kyleporter/.local/share/gem/ruby/3.3.0/bin:$PATH; export PATH
MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH; export INFOPATH
eval "$(thefuck --alias)"
eval "$(starship init zsh)"
export DOT="/home/kyleporter/.dotfiles"
export PATH="$HOME/Programming/Projects/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
