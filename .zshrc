# Path to your oh-my-zsh installation.
export ZSH=/Users/julienvallini/.oh-my-zsh
eval $(docker-machine env default)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(symfony2)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export ANDROID_HOME=/usr/local/opt/android-sdk

###########
# aliases #
###########

# Core
## Misc
alias zconfig="vim ~/.zshrc && source ~/.zshrc"
alias vsh="vagrant ssh"
#alias vshw="vagrant ssh && sudo su www-data"
alias vup="vagrant up"
alias vups="vagrant up && vagrant ssh"
alias vhalt="vagrant halt"
alias cpi="composer install"
alias whoisport="lsof -n -i4TCP:8080"
alias mana="tldr"

## Git
alias gap="git add -p" 
alias ga="git add"
alias gm="git commit -m"
alias goops="git oops"
alias gpo="git push -u origin"
alias gpof="git push -u origin -f"
alias gs="git status"
alias gst="git stash"
alias gstp="git stash pop"
alias go="git checkout"
alias gl="git log -M --decorate --graph"
alias gp="git pull"
alias gnb="git co -b"
alias go="git co"
alias gom="git co master && git stash && git pull"
alias god="git co develop && git stash && git pull"
alias gomp="git co master && git pull"
alias godp="git co develop && git pull"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias grb="git rebase -i"
alias grbd="git rebase -i develop"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"
alias gr="git reset"
alias gall="git add -A"
alias git-squash-all="git squash-all"
alias gc="git clone"
alias gclean="git clean -d -f && git checkout -- ."
alias gf="git fetch"
alias gfa="git fetch --all"
alias gmg="git commit -m 'Auto-commit'"
alias gmfuck="git commit -m \"$(curl -s http://whatthecommit.com/index.txt )\""
alias gph="git push heroku"
# Projects
## Babylone
alias bab="cd ~/Projects/babylone"
alias babs="bab && vagrant ssh"
alias perso="cd ~/Projects/perso"
alias quo="cd ~/Projects/quotatis"

## WeatherApi
alias mrpi-weather="sudo sh ~/Scripts/mount-RaspiWeatherApi.sh"
alias urpi-weather="sudo sh ~/Scripts/umount-RaspiWeatherApi.sh"

alias dcp="docker-compose"
alias dmc="docker-machine"

export NVM_DIR="/Users/julienvallini/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

man() {
    env \
        LESS_TERMCAP_mb=$'\e[1;31m' \
        LESS_TERMCAP_md=$'\e[1;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[1;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[1;32m' \
            man "$@"
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.yarn/bin:$PATH"
