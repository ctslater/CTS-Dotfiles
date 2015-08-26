autoload -U colors && colors

autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git 
zstyle ':vcs_info:*' formats ' [%b%c%u%B%F{green}]'

setopt prompt_subst
PROMPT='%(j.%F{red}{%j} .)%B%F{magenta}%c%B%F{green}${vcs_info_msg_0_}%B%F{magenta} %{$reset_color%}%% '
