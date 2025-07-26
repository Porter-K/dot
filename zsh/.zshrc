source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz compinit && compinit
autoload -Uz vcs_info # enable vcs_info
zstyle ':vcs_info:*' formats '%F{red}%b%f' # git(main)

# Prompts
setopt PROMPT_SUBST
precmd () { vcs_info } # always load before displaying the prompt
PS1='[%j] %F{blue}%0~%f $vcs_info_msg_0_ %F{yellow}%(!.#.$)%f ' # [processes] cwd branch $
# Right prompt show time
RPROMPT="%T"


alias ls='eza'
alias la='eza -la'
alias tree='eza --tree -la'
alias zshconfig="nvim ~/.zshrc"
alias addssh=~/scripts/ssh/ssh.sh
export EDITOR='/usr/bin/nvim'
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=100000
# setopt SHARE_HISTORY

export _ZO_ECHO='1'
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(thefuck --alias)"
eval "$(ssh-agent -s)"


export PATH="$PATH:/home/user/.cargo/bin"

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Completion
[[ -f /home/user/.dart-cli-completion/zsh-config.zsh ]] && . /home/user/.dart-cli-completion/zsh-config.zsh || true
source ~/.zsh_spotify
source ~/.zsh_bitwarden
