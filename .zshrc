# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install # The following lines were added by compinstall
zstyle :compinstall filename '/home/igortxra/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Poetry completions
fpath+=~/.zfunc

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias for use git to store my dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Alias for adapt commands to rewritten in rust commands
alias ls='exa --icons'
alias ps='procs'

# Git alias
alias g='git'

# Alias for lazyness
alias cc='clear'
alias glab='cd $HOME/gitlab'
alias config='. $HOME/shell_scripts/config.sh'

# PATHS 
export PATH="/home/devx/.flutter/flutter/bin:$PATH"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -c 'Hong Kong' -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector -c 'Hong Kong' --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector -c 'Hong Kong' --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector -c 'Hong Kong' --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Load autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load asdf
source /opt/asdf-vm/asdf.sh

# Load fuzzy finder
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


