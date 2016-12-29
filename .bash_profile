export PATH=/usr/local/bin:$PATH

# Maven
export M2_HOME=/usr/local/Cellar/maven/3.3.9/libexec


# added by Miniconda3 3.5.5 installer
export PATH="$HOME/miniconda3/bin:$PATH"

# Go
source '/usr/local/etc/bash_completion.d'
export GOPATH=$HOME/go_workspace
# export GOPATH=$HOME/go_workspace
export PATH=$GOPATH/bin:$PATH
export GOROOT=/usr/local/Cellar/go/1.7.4_1/libexec
export PATH=$GOROOT/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.roswell/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# Dart
export PATH=$HOME/flutter/bin:$PATH

# Rust Source
export RUST_SRC_PATH=$HOME/.rust/src

# Google Cloud SDK
export GCLOUD_SDK=$HOME/google-cloud-sdk
export PATH=$GCLOUD_SDK/bin:$PATH
#export PYTHONPATH="$PYTHONPATH:$GCLOUD_SDK/platform/google_appengine:$GCLOUD_SDK/platform/google_appengine/lib/django-1.5"

# The next line updates PATH for the Google Cloud SDK.
source '$HOME/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '$HOME/google-cloud-sdk/completion.bash.inc'

# Added AppEngine "goapp" Tool
export PATH="$HOME/google-cloud-sdk/platform/go_appengine:$PATH"

# Boot2Docker
#export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN="9038d7f79f559f0716c310bc4b2b177b1b29e813"

# added by Miniconda3 3.10.1 installer
export PATH="$HOME/miniconda3/bin:$PATH"

# React Editor
export REACT_EDITOR=atom

# Android HOME
export ANDROID_HOME=$HOME/Library/Android/sdk

# Android NDK
export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle

export PATH="/usr/local/sbin:$PATH"
