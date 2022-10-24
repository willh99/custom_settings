HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
setopt beep
unsetopt autocd notify

zstyle ':completion:*:*:make:*' tag-order 'targets'

autoload -Uz compinit && compinit
setopt prompt_subst
autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst

autoload -U colors; colors
source <(kubectl completion zsh)
#RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

export PATH="$HOME/go/bin:$PATH"
export PROMPT='%(?.✅.❌%?)%F{cyan}${vcs_info_msg_0_}%f %F{blue}%T %F{red}%n %F{yellow}%1d%f %\> '

GPG_TTY=$(tty)
