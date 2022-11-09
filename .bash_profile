export PATH=/usr/local/bin:$PATH

# VI Mode
# set editing-mode vi
set -o vi

# Default Editor
export EDITOR=vim

# Maven
export M2_HOME=/usr/local/Cellar/maven/3.3.9/libexec

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Coursier
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"

# added by Miniconda3 3.5.5 installer
export PATH="$HOME/miniconda3/bin:$PATH"

# source '/usr/local/etc/bash_completion.d'

# Add .NET Core SDK tools
export PATH="$HOME/.dotnet/tools:$PATH"

# Elixir Mix Executables
export PATH="$PATH:$HOME/.mix"
export PATH="$PATH:$HOME/.mix/escripts"

# Go
export GOPATH=$HOME/go_workspace
export GOROOT=/usr/local/Cellar/go/1.19.2/libexec

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# exports
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.roswell/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.opam/system/bin:$PATH
export PATH=$HOME/vcpkg:$PATH
export PATH=$PATH:$HOME/.rvm/bin:$PATH
# export PATH=/usr/local/opt/llvm@5/bin:$PATH
# export PATH=/usr/local/opt/llvm/bin:$PATH

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Dart
export PATH=$HOME/flutter/bin:$PATH

# Rust Source
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# Google Cloud SDK
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
# export GCLOUD_SDK=$HOME/google-cloud-sdk
# export PATH=$GCLOUD_SDK/bin:$PATH
# export PATH=$GCLOUD_SDK/platform/google_appengine

# The next line updates PATH for the Google Cloud SDK.
# source '$HOME/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
# source '$HOME/google-cloud-sdk/completion.bash.inc'

# Boot2Docker
#export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN="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"

# added by Miniconda3 3.10.1 installer
export PATH="$HOME/miniconda3/bin:$PATH"

# React Editor
export REACT_EDITOR=atom

# Android HOME
export ANDROID_HOME=$HOME/Library/Android/sdk

# Android NDK
export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle

export PATH="/usr/local/sbin:$PATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Node Version Managers
eval "$(fnm env --use-on-cd)"

export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion.d

# DirEnvHook
eval "$(direnv hook bash)"
. "$HOME/.cargo/env"
