# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sunw/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(git python zsh-syntax-highlighting virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias tb='sudo pkill TouchBarServer'
alias gol='/Users/sunw/Repos/Laniakea/homepage/'
alias gome='/Users/sunw/Repos/sunweiyang/'
alias goam='/Users/sunw/Repos/sunweiyang/attend/attend-mobile'
alias goaw='/Users/sunw/Repos/sunweiyang/attend/attend-web'
alias goab='/Users/sunw/Repos/sunweiyang/attend/attend-server; source $WORKON_HOME/attend/bin/activate'
alias gog='/Users/sunw/Repos/sunweiyang/gitswag/; source $WORKON_HOME/gitswag/bin/activate'
alias gom='cd ~/Skale/skale-mobile/'
alias gos='cd ~/Skale/skale-website/'
alias gow='cd ~/Skale/skale-web/'
alias gohq='cd ~/Skale/skale-hq/'
alias gob='cd ~/Skale/skale-backend/; source $WORKON_HOME/skale/bin/activate; export SKALE_APP_VERSION=1.19.1 CODEPUSH_VERSION=370 UA_PARSER_YAML=regexes.yaml'
alias skalex='open ~/Skale/skale-mobile/ios/Skale.xcworkspace/'
alias pullall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin main \;'
alias gg='git log --oneline --abbrev-commit --graph --decorate --color'
alias gga='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias gpl='git branch | grep -Ev "develop|staging|main" | xargs git branch -D'
alias gpr='git fetch origin --prune; git push --set-upstream origin config'
alias showicons='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias hideicons='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias v='nvim'
alias mobilesims='/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID 9E4332AF-95BC-4A5E-85FA-73EE6FD98BDF & emulator -avd Pixel_3_API_29 &'
alias gitsync='git checkout develop; git push; git checkout staging; git merge develop; git push; git checkout main; git merge staging; git push; git checkout develop'
alias cpall='git checkout develop; ./codepush all; git checkout develop; gob; ./codepush all; gom;'
export PATH="/usr/local/sbin:$PATH"

# The next line is for Android SDK
export ANDROID_HOME=/Users/sunw/Library/Android/sdk
export PATH=/Users/sunw/Library/Android/sdk/platform-tools:/Users/sunw/Library/Android/sdk/emulator:/Users/sunw/Library/Android/sdk/tools:$PATH
export PATH=/usr/local/Cellar/ruby/2.4.1_1/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.13.jdk/Contents/Home"


# Restoring some default Terminal shortcuts
bindkey "[D" backward-word
bindkey "[C" forward-word

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sunw/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sunw/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sunw/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sunw/google-cloud-sdk/completion.zsh.inc'; fi


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# FoundationDB Go bindings
export CGO_CFLAGS="-g -O2 -I/Users/sunw/.go/src/github.com/apple/foundationdb/bindings/c"
export CGO_LDFLAGS="-g -O2 -L/usr/local/lib"

# virtualenv
export WORKON_HOME=~/Envs

# Flutter
export PATH=$PATH:/Users/sunw/flutter/bin

# Ruby from Homebrew instead of default system
export PATH="/usr/local/opt/ruby/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
