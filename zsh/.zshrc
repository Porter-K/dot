source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit && compinit
autoload -Uz vcs_info # enable vcs_info
zstyle ':vcs_info:*' formats '%F{red}%b%f' # git(main)

setopt PROMPT_SUBST

precmd () { vcs_info } # always load before displaying the prompt
PS1='[%j] %F{blue}%0~%f $vcs_info_msg_0_ %F{yellow}%(!.#.$)%f ' # [processes] cwd branch $

RPROMPT="%T"

export _ZO_ECHO='1'
eval "$(zoxide init zsh)"
alias ls='eza'
alias la='eza -la'
alias tree='eza --tree -la'
alias zshconfig="nvim ~/.zshrc"
export EDITOR='/usr/bin/nvim'
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=100000
# setopt SHARE_HISTORY

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

eval "$(thefuck --alias)"
# eval "$(starship init zsh)"
# export DOT="/home/kyleporter/.dotfiles"

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
export PATH="$PATH:/home/user/.cargo/bin"
