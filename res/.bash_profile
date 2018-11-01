
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=/opt/local/bin:$PATH

export PATH=/usr/local/Cellar/node/10.12.0/bin:$PATH

export PYTHONPATH=$PYTHONPATH:~/mxnet/python
alias ll='ls -alh'
alias killadb = 'adb kill-server \ dab devices'
alias emptytrash = 'rm -rf ~/.Trash'
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# set the number of open files to be 1024
ulimit -S -n 1024

export HTTP_PROXY="http://127.0.0.1:1087"
export http_proxy="http://127.0.0.1:1087"
export ALL_PROXY="http://127.0.0.1:1087"
export all_proxy="http://127.0.0.1:1087"
export HTTPS_PROXY="http://127.0.0.1:1087"
export https_proxy="http://127.0.0.1:1087"