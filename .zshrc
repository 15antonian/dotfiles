## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source ~/antigen.zsh

antigen use oh-my-zsh
#Theme
#antigen theme romkatv/powerlevel10k
#antigen theme amuse
#antigen theme denysdovhan/spaceship-prompt
antigen theme sindresorhus/pure
#bundles
antigen bundle git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions 
antigen bundle laurenkt/zsh-vimto
antigen bundle powerline/powerline
#antigen bundle 

# Tell Antigen that you're done.
antigen apply

# Load colors
autoload -U colors && colors	
#stty stop undef		# Disable ctrl-s to freeze terminal.
DISABLE_LS_COLORS="true"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)       # Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

ENABLE_CORRECTION="true"

export EDITOR="vim"
 

#Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

export FZF_BASE='$HOME/.fzf/bin/fzf'

export FZF_DEFAULT_COMMAND='find -type f'


DISABLE_FZF_KEY_BINDINGS="false"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
#plugins=(git dotenv zsh-syntax-highlighting zsh-autosuggestions zsh-completions fzf)

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Custom aliases
alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias ohmyzsh="vim ~/.zshrc"
alias reptilian='sshpass -p reptilian ssh reptilian@192.168.126.128'
alias appdata='cd /mnt/c/Users/iisni/AppData/Roaming'
alias cf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
alias kernel='cd /usr/rep/src/reptilian-kernel'
alias at='alacritty-themes'
alias alacritty="vim /mnt/c/Users/iisni/AppData/Roaming/alacritty/alacritty.yml"
alias reload="source ~/.EverVim.vimrc && source ~/.zshrc && source /mnt/c/Users/iisni/AppData/Roaming/alacritty/alacritty.yml"
alias onedrive="cd /mnt/c/Users/iisni/Onedrive"
alias wt="vim /mnt/c/Users/iisni/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
alias vimrc="vim ~/.EverVim.vimrc"
