export MAVEN_OPTS=-Xmx1g
export CLICOLOR=1
export GOPATH=/usr/local/bin
export MAVEN_HOME=/Users/ivanzhangwb/work/apache-maven-3.2.2
export TOMCAT_HOME=/Users/ivanzhangwb/work/tomcat-7.0.26-spi
export Pandora_HOME=/Users/ivanzhangwb/work/tomcat-7.0.26-spi/deploy/taobao-hsf.sar
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home
export ADB_HOME=/Users/ivanzhangwb/work/adt-bundle-mac-x86_64-20131030/sdk/
export ANT_HOME=/Users/ivanzhangwb/work/ant-1.9.3
export PYTHONPATH=/usr/local/bin/python3
export OSSCMDPATH=/Users/ivanzhangwb/work/OSSCMD
export QTDIR=/usr/local/Cellar/qt5/5.7.0
# Gun tools 
export GUN_PATH=/usr/local/opt/coreutils/libexec/gnubin
export CMAKE_PREFIX_PATH=/usr/local/Cellar/qt5/5.7.0
export USEFUL_SHELL_PATH=~/bin/useful-scripts
export ZSH=~/.dotfile/zsh/oh-my-zsh
export PATH=$GUN_PATH:~/bin:$USEFUL_SHELL_PATH:$MAVEN_HOME/bin:$JAVA_HOME/bin:$ANTX_HOME/bin:$ADB_HOME/platform-tools:$ADB_HOME/tools:$ANT_HOME/bin:$TOMCAT_HOME/bin:$Pandora_HOME:$GOPATH:$PYTHONPATH:$OSSCMDPATH:$QTDIR/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
#[[ -s "/Users/ivanzhangwb/.jenv/bin/jenv-init.sh" ]] && source "/Users/ivanzhangwb/.jenv/bin/jenv-init.sh" && source "/Users/ivanzhangwb/.jenv/commands/completion.sh"
# for autojump
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh


