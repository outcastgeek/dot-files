# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG $HOME/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# User configuration

export FISH_CONF=$HOME/.config/fish

# Maven
export M2_HOME=/usr/local/Cellar/maven/3.3.9/libexec

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# added by Miniconda3 3.5.5 installer
source $FISH_CONF/conda.fish
set PATH $PATH $HOME/miniconda3/bin

# Mono
set PATH $PATH /Library/Frameworks/Mono.framework/Versions/Current/bin

# Go
export GOPATH=$HOME/go_workspace
export GOROOT=/usr/local/Cellar/go/1.9.3/libexec

# exports
set  PATH $PATH $GOPATH/bin
set PATH $PATH $GOROOT/bin

# Google Cloud SDK
export GCLOUD_SDK=$HOME/google-cloud-sdk
set PATH $PATH $GCLOUD_SDK/bin
set PATH $PATH $GCLOUD_SDK/platform/google_appengine

# SQLite

set PATH $PATH "/usr/local/opt/sqlite/bin"

# Boot2Docker
#export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN="9038d7f79f559f0716c310bc4b2b177b1b29e813"


# added by Miniconda3 3.10.1 installer
set PATH $PATH $HOME/miniconda3/bin

#Home Bins
set PATH $PATH $HOME/.local/bin
#set PATH $PATH $HOME/.cabal/bin
set PATH $PATH $HOME/.roswell/bin
# set PATH $PATH $HOME/.nimble/bin
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH $HOME/.cache/rebar3/bin

# OCaml
set PATH $PATH $HOME/.opam/system/bin

# Flutter
set PATH $PATH $HOME/flutter/bin

# curl https://sh.rustup.rs -sSf | sh
# rustup component add rust-src # Rust Source
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust

# Haskell
#set PATH $PATH $HOME/.stack/programs/x86_64-osx/ghc-7.10.3/bin

# React Editor
export REACT_EDITOR=atom

# Android HOME
export ANDROID_HOME=$HOME/Library/Android/sdk

# Android NDK
export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle

set PATH $PATH $HOME/Library/Android/sdk/tools
set PATH $PATH $HOME/Library/Android/sdk/platform-tools
set PATH $PATH $HOME/Library/Android/sdk/build-tools/25.0.0
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
