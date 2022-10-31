# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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
plugins=(git vi-mode)

# VI Mode
# bindkey -v

# Default Editor
export EDITOR=vim

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN="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"

# Mono
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:$PATH

# Add .NET Core SDK tools
export PATH="$HOME/.dotnet/tools:$PATH"

# Dart
export PATH=$HOME/flutter/bin:$PATH

# Rust Source
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# Maven
export M2_HOME=/usr/local/Cellar/maven/3.3.9/libexec

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Coursier
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"
# mkdir -p ~/.zsh/completion
# cs --completions zsh > ~/.zsh/completion/cs
# echo 'fpath=(~/.zsh/completion $fpath)' >> ~/.zshrc
# echo 'autoload -Uz compinit ; compinit' >> ~/.zshrc
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit ; compinit

# Elixir Mix Executables
export PATH="$PATH:$HOME/.mix"
export PATH="$PATH:$HOME/.mix/escripts"

# Go
export GOPATH=$HOME/go_workspace
export GOROOT=/usr/local/Cellar/go/1.19.2/libexec

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Android HOME
export ANDROID_HOME=$HOME/Library/Android/sdk

# Android NDK
export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle

# Rust
# source $HOME/.cargo/env

# User configuration

# export PATH="/usr/local/opt/llvm@5/bin:$PATH"
# export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$HOME/google-cloud-sdk/platform/go_appengine:$PATH"
export PATH="$HOME/google-cloud-sdk/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="/usr/local/MacGPG2/bin:$PATH"
export PATH="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="$HOME/.roswell/bin:$PATH"
export PATH="$HOME/.nimble/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.cache/rebar3/bin:$PATH"
export PATH="$HOME/.opam/system/bin:$PATH"
export PATH="$HOME/vcpkg:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/chiefkemist/.pyenv/versions/miniconda3-4.7.12/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/chiefkemist/.pyenv/versions/miniconda3-4.7.12/etc/profile.d/conda.sh" ]; then
        . "/Users/chiefkemist/.pyenv/versions/miniconda3-4.7.12/etc/profile.d/conda.sh"
    else
        export PATH="/Users/chiefkemist/.pyenv/versions/miniconda3-4.7.12/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Google Cloud SDK
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/chiefkemist/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chiefkemist/google-cloud-sdk/path.zsh.inc'; fi
#
# # The next line enables shell command completion for gcloud.
# if [ -f '/Users/chiefkemist/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chiefkemist/google-cloud-sdk/completion.zsh.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# DirEnvHook
eval "$(direnv hook zsh)"

# bun completions
[ -s "/Users/chiefkemist/.bun/_bun" ] && source "/Users/chiefkemist/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/chiefkemist/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Wasmer
export WASMER_DIR="/Users/chiefkemist/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/chiefkemist/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/chiefkemist/micromamba";
__mamba_setup="$('/Users/chiefkemist/.local/bin/micromamba' shell hook --shell zsh --prefix '/Users/chiefkemist/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/chiefkemist/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/chiefkemist/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/chiefkemist/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
