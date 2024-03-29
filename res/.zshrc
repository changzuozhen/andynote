# export HTTP_PROXY="http://127.0.0.1:1087"
# export http_proxy="http://127.0.0.1:1087"
# export ALL_PROXY="http://127.0.0.1:1087"
# export all_proxy="http://127.0.0.1:1087"
# export HTTPS_PROXY="http://127.0.0.1:1087"
# export https_proxy="http://127.0.0.1:1087"
# alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
# alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
# alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
# alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
# alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
# alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home
source ~/script/logutils.sh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# https://www.macports.org/install.php
export PATH=/opt/local/bin:$PATH

export PATH=/usr/local/Cellar/node/10.12.0/bin:$PATH



export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/tools/proguard/bin/
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/platform-tools/systrace/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$HOME/Library/Android/sdk/build-tools/28.0.3/
export HOME_PATH=$HOME
export PATH=$HOME_PATH/Developer/mongodb-osx-x86_64-4.0.5/bin/:$PATH

# export PATH=$PATH:$HOME/development/flutter/bin
# Set name of the theme to load.
# Look in $HOME_PATH/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="gitster"
# ZSH_THEME="agnoster"
# ZSH_THEME="sy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="$HOME_PATH/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="subl $HOME_PATH/.zshrc"
alias ohmyzsh="subl $HOME_PATH/.oh-my-zsh"
export HOME_PATH="/users/AndyChang"
export PATH="$HOME_PATH/script:/usr/local/sbin:$PATH"
# export PATH="$HOME_PATH/dev/build/flutter/bin:$PATH"
# export ANDROID_NDK_HOME="$HOME_PATH/Library/Android/sdk/ndk-bundle"
# export ANDROID_NDK_HOME="/Users/changzuozhen/Library/Android/sdk/ndk/23.0.7599858"
export ANDROID_NDK_HOME="$HOME_PATH/dev/build/android-ndk-r17c/"
export ANDROID_HOME="$HOME_PATH/Library/Android/sdk"
ANDROID_SO="./build/intermediates/cmake/debug/obj/armeabi"
ANDROID_SO_V7="./build/intermediates/cmake/debug/obj/armeabi-v7a"

# 配置 flutter 的 PATH 环境变量
export PATH="$PATH:$HOME/.flutter_sdk/bin"
# 配置 pub host和 storage
export PUB_HOSTED_URL="https://pub.sankuai.com"
export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"

alias ll='ls -alh'
# alias adb='$HOME_PATH/script/adb'

alias killadb='adb kill-server \ adb devices'
# alias emptytrash='rm -rf $HOME_PATH/.Trash'
alias emptytrash='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv $HOME_PATH/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'
alias setupProxy='$HOME_PATH/script/setupProxy.py'
alias updatedev='sh $HOME_PATH/Tencent/workDev/up.sh'
alias cf="adb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp'"
alias da='adb shell dumpsys activity activities'
alias stop='adb shell am force-stop '
alias testapp='adb shell am start -n com.tencent.deviceearn/.TestListActivity'
alias testapp2='adb shell am start -n com.tencent.testapi/.MainActivity'
alias llmusic='adb shell ls -Rl /storage/extsd/tencent/wecarmusic'
alias rmmusic='adb shell ls -R /storage/extsd/tencent/wecarmusic/data ; adb uninstall com.tencent.wecarmusic ; adb shell rm -r /storage/extsd/tencent/wecarmusic/data ; adb shell ls /storage/extsd/tencent/wecarmusic/data'
alias uninstallmusic='adb uninstall com.tencent.wecarmusic ; adb shell ls /storage/extsd/tencent/wecarmusic/data'
alias rmeasyearn='adb uninstall com.tencent.easyearn'
alias and-screencap='adb exec-out screencap -p > screen.png && open screen.png'

alias android='$HOME_PATH/Library/Android/sdk/tools/android'
alias agrep='''adb logcat | grep -v -e 'E/RRCTRL_AVS' | grep'''
alias killmusic="adb shell kill -9 $(adb shell ps | command grep music | cut -c15-20)"
alias stopmusic="adb shell am force-stop com.tencent.wecarmusic"

alias grepfatal="adb logcat | grep fatal"
alias pscmp="adb shell ps | grep play"
# alias grepcmp="adb logcat | grep $(adb shell ps | command grep mapplay | cut -c15-20) | grep -v 'SensorManager' | grep "
alias grepcmp="adb logcat | grep $(adb shell ps | command grep mapplay | cut -c15-20) | grep -v 'SensorManager'"
alias createsystrace="python $HOME_PATH/Library/Android/sdk/platform-tools/systrace/systrace.py  --time=5 -o mynewtrace.html sched gfx view wm"
alias viewsystrace="open mynewtrace.html"
alias currentapp="adb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp&Window' | cut -d' ' -f6 | cut -d'/' -f 1"
alias currentactivity="adb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp&Window' | cut -d' ' -f6 | cut -d'}' -f 1"

alias dumpplay='adb shell dumpsys meminfo com.mapplay'

alias moco='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/moco;ll;./startmock.sh'
alias cmpscript='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/;ll;'
alias cmppull='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/;ll;./pulllog.sh'
alias navscript='cd $HOME_PATH/dev/nav/com.meituan.sankuai.navisdk/script/;ll;'
alias pullnav='cd $HOME_PATH/dev/nav/com.meituan.sankuai.navisdk/script/;ll;./pulllog.sh'
alias pullcompare='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/;ll;./pulllog.sh'
alias resetcompare='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/;ll;./resetup.sh'
alias clearcompare='cd $HOME_PATH/dev/nav/navcompare-android/navcompare/script/;ll;./clearlog.sh'
alias lsupload='adb shell ls /sdcard/Download/ExportedTask/MTNavi/uploaded/'
alias lsrecorded='adb shell ls /sdcard/Download/ExportedTask/MTNavi/recorded/'

alias update='source $HOME_PATH/.zshrc'

alias and-addr2lin="$HOME_PATH/Library/Android/android-ndk-r10e/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line -p -f -e"
alias and-ndk-stack="$HOME_PATH/Library/Android/android-ndk-r10e/ndk-stack"
alias and-aapt31="$HOME_PATH/Library/Android/sdk/build-tools/31.0.0/aapt"
alias and-classyshark='java -jar $HOME_PATH/script/ClassyShark.jar '
alias and-jadx='cd /Users/changzuozhen/script/jadx-1.1.0/bin/;sh /Users/changzuozhen/script/jadx-1.1.0/bin/jadx-gui'

alias ndkstacklogcat="adb shell logcat | ndk-stack -sym $ANDROID_SO"
alias ndkstacklogcatv7="adb shell logcat | ndk-stack -sym $ANDROID_SO_V7"

alias and-ndkstackfile="ndk-stack -sym $ANDROID_SO -dump "
alias and-ndkstackfilev7="ndk-stack -sym $ANDROID_SO_V7 -dump "

alias updatesource="source $HOME_PATH/.zshrc"
alias adinfo='python $HOME_PATH/script/adinfo.py'
alias backupcode='sh $HOME_PATH/Tencent/WorkDev/GOOD/backup.sh'
alias myzip='$HOME_PATH/script/myzip.py'
alias decodepic='java -jar $HOME_PATH/script/decodepic.jar '
alias bfg='java -jar $HOME_PATH/script/bfg_1.14.0.jar '

alias and-savelog="adb logcat -v threadtime > log.txt"
alias adbdumpmeminfo='adb shell dumpsys meminfo '
alias adbdumpmodel='adb shell getprop ro.product.model'
alias adbdumpbattery='adb shell dumpsys battery'
alias adbdumpdisplay='adb shell dumpsys display | grep DisplayDeviceInfo'
alias adbdumpcpuinfo='adb shell dumpsys cpuinfo'
alias adbgetwmsize='adb shell wm size'
alias adbgetwmdensity='adb shell wm density'
alias adbgetmem='adb shell cat /proc/meminfo'
alias and-proguardgui='sh $HOME_PATH/Library/Android/sdk/tools/proguard/bin/proguardgui.sh'
alias myscrcpy='scrcpy --window-title 'Andy Phone' --show-touches --max-size 1024  --bit-rate 5M'
alias adbtcpip='adb tcpip 5555'

export NVM_DIR="$HOME_PATH/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

alias ytb="youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --convert-subs srt --write-sub --all-subs --embed-subs --proxy http://127.0.0.1:1087 "
alias ytb-p="youtube-dl --proxy http://127.0.0.1:1087 "
alias ytb-pls="youtube-dl --proxy http://127.0.0.1:1087 --list-formats "
alias treel='tree -pfhFClN --dirsfirst -L'
alias treel2='tree -fhFlN --dirsfirst -L'
alias treel3='tree -hFlN --dirsfirst -L'
alias fixprivacy='sudo spctl --master-disable'
alias fixapp='sudo xattr -d com.apple.quarantine '

alias stopcontainer='docker container stop $(docker container ls -aq)'
alias rmcontainer='docker container stop $(docker container ls -aq);docker container rm $(docker container ls -aq);docker container prune;docker volume prune;docker network prune;echo ;docker system df;echo ;docker image ls'
alias rmfirstimage='docker image rm $(docker image ls -q | head -n 1)'
alias lldocker='docker container ls -a;echo ;docker image ls;echo ;docker network ls;echo ;docker volume ls; docker system df'
alias myffmpeg='ffmpeg -r 3 -s 540x1080 -i'
alias unlockflutter='rm -f /Users/changzuozhen/development/flutter/bin/cache/lockfile /Users/changzuozhen/.taco/flutter/master/flutter/bin/cache/lockfile;ll /Users/changzuozhen/development/flutter/bin/cache;'

alias rm._="find . -type f -name '._*' -delete"
alias lll="ls | xargs du -sh"

alias submudule="git submodule update --init --recursive"

# mount the android file image
function mountAndroid { hdiutil attach $HOME_PATH/android.dmg -mountpoint /Volumes/android; }
# unmount the android file image
function umountAndroid() { hdiutil detach /Volumes/android; }
# set the number of open files to be 1024
ulimit -S -n 1024

export no_proxy=127.0.0.1,localhost,.oa.com,.local
export GOROOT_BOOTSTRAP="/usr/local/go/bin/go"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME_PATH/.sdkman"
[[ -s "$HOME_PATH/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME_PATH/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
