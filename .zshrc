neofetch
## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
export PATH=$Path:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/antonio/.local/bin:/opt/homebrew/bin:/Users/antonioantonian/Library/Python/3.8/bin
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#source /usr/local/share/antigen/antigen.zsh
source ~/antigen.zsh

antigen use oh-my-zsh

antigen theme romkatv/powerlevel10k
#antigen theme lambda
#antigen theme amuse
#antigen theme denysdovhan/spaceship-prompt
# antigen theme sindresorhus/pure
antigen bundle git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle laurenkt/zsh-vimto
#antigen bundle powerline/powerline
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

autoload -U promptinit; promptinit
#prompt spaceship

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

#ENABLE_CORRECTION="true"

export EDITOR="nvim"
alias vim="nvim"

#Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

export FZF_BASE='$HOME/.fzf/bin/fzf'

export FZF_DEFAULT_COMMAND='find -type f'

DISABLE_FZF_KEY_BINDINGS="false"

#source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=en_US.UTF-8


SPACESHIP_PROMPT_ORDER=(
  time        # Time stamps section (Disabled)
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  # package     # Package version (Disabled)
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  # xcode       # Xcode section (Disabled)
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  # julia       # Julia section (Disabled)
  # docker      # Docker section (Disabled)
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  # ember       # Ember.js section (Disabled)
  #kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  # vi_mode     # Vi-mode indicator (Disabled)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Custom aliases
alias zshconfig="nvim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias ohmyzsh="nvim ~/.zshrc"

alias cf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vimrc="nvim ~/.config/nvim/init.vim"
alias vim="nvim"

#Changing ls to exa
alias ls='exa -l --color=always --group-directories-first' # my preferred listing
alias la='exa -al --color=always --group-directories-first'  # all files and dirs
alias ll='exa -al --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
