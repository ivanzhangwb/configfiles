# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something
alias -g pushdir='/Users/ivanzhangwb/work/code/aliyun/cloud-channel-ps'
alias -g aliyun='/Users/ivanzhangwb/work/code/aliyun'
alias -g tmall='/Users/ivanzhangwb/work/code/tmall_wireless'
alias -g write='/Users/ivanzhangwb/blog/blog'
alias -g apns='/Users/ivanzhangwb/work/code/aliyun/cloud-channel-apns'
alias -g keynote='/Users/ivanzhangwb/work/keynote'
alias -g devenv='/Users/ivanzhangwb/DevEnv/'
alias -g zshalias='/Users/ivanzhangwb/.yadr/zsh/'
alias -g selfdoc='/Users/ivanzhangwb/work/self-documents'
# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where dotfile is installed.

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi
dotfile=$HOME/.dotfile
# dotfile support
#tmux
alias mt='tmux'
alias te='vi ~/.tmux.conf'

#maven
alias ms='mvn clean install -Dmaven.test.skip=true -DdownloadSources=true'
alias me='mvn eclipse:clean eclipse:eclipse -DdownloadSources=true'
alias md='mvn dependency:tree'
alias mi='mvn idea:clean idea:idea -DdownloadSources=true'
alias mdeploy='mvn clean -Dmaven.test.skip=true deploy -U -DrepositoryId=snapshots'

# hosts modify
alias hosts='sudo vi /etc/hosts'
# development env info
alias online='ssh login1.et2.alibaba.org'
alias mcfashiondaily='ssh 10.125.29.116'
alias tconsoledaily='ssh 100.69.207.170'
alias tmanagerdaily='ssh 11.239.184.124'
alias tlivedaily='ssh 10.101.87.162'
alias dev='ssh 10.101.87.162'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'
# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source $dotfile/zsh/aliases.zsh
}

alias ae='vi $dotfile/zsh/aliases.zsh' #alias edit
alias ar='source $dotfile/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vi ~/.vimrc'

# zsh profile editing
alias ze='vi ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog=''
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Common shell functions
alias less='less -r'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'
alias copy='tr -d "\n" | pbcopy'

# 自己常用的别名
# vim plugin update
alias vimplugin='vim --noplugin -u ~/.dotfile/vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall'
# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'
