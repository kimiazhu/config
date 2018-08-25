if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then 
	source ~/.bash_aliases
fi

export REDIS_HOME="/usr/local/homebrew/homebrew/Cellar/redis@3.2/3.2.11"
export BREW_HOME="/usr/local/homebrew/homebrew"
export MYSQL_HOME="/usr/local/homebrew/homebrew/opt/mysql@5.6"
export GOROOT="/usr/local/go/"
#export GOPATH=/Users/zhuhaihua/Development/GoProject;/Users/zhuhaihua/Development/jxserver/server/code/source/GoServices
#export GOPATH="/Users/zhuhaihua/QNap/homes/admin/Development/seasun/gopath/"
export GOPATH="/Users/zhuhaihua/Development/GoProject"
export GOOS="darwin"
export GOARCH="amd64"
export ISTIO_HOME="/Users/zhuhaihua/.minikube/istio-0.8.0"

export ANDROID_HOME="/Users/zhuhaihua/Library/Android/sdk"
export ADB_HOME="/Users/zhuhaihua/Library/Android/sdk/platform-tools"
#export MONO_HOME="/Applications/Unity/Unity.app/Contents/Frameworks/Mono"
export JVMSTAT_HOME="/Users/zhuhaihua/Applications/jvmstat"
export PATH="$PATH:$JVMSTAT_HOME/bin:$ADB_HOME:$GOPATH/bin:$REDIS_HOME/bin"

_SHELL=`ps | grep $$ | grep -v grep | awk '{print $4}'`
_IS_BASH=`echo ${_SHELL} | grep "bash"`
if [ -n "$_IS_BASH" ]; then
  # export PS1='%T ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
  export PS1="[\u@\h \W]\$ "
fi

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export JVMSTAT_JAVA_HOME="$JAVA_HOME"
export MAVEN_HOME="/usr/local/maven/apache-maven-3.3.9"
export GRADLE_HOME="/usr/local/gradle/gradle-3.4"
export PATH=$BREW_HOME/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH/bin:$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin:~/bin:$MYSQL_HOME/bin:$ISTIO_HOME/bin/

export HOMEBREW_GITHUB_API_TOKEN="4eabbfd877bdde14759617ff743a71907a650eb4"

# alias getopt="/usr/local/Cellar/gnu-getopt/1.1.6/bin/getopt"
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

alias python="/usr/bin/python"
alias svn="/usr/local/bin/svn"
alias ctags="/usr/local/bin/ctags"

alias mck="sshfs root@10.20.109.128:/root/CKS1 ~/Development/share/"

#mono '/Users/zhuhaihua/.vim/bundle/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe' -p 2000 -s '/Users/zhuhaihua/Development/unity/2DPlatformer-SLua/2DPlatformer-SLua.sln'
alias cs="mono '/Users/zhuhaihua/.vim/bundle/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe' -p 2000"

alias Unity="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
alias unity=Unity

#alias gcc="/usr/local/bin/gcc"
#alias g++="/usr/local/bin/g++"
#alias gc="git commit -m "
#alias gpush="git push"
#alias gpull="git pull"
#alias gs="git status"
#alias gl="git log"
alias cddev="cd ~/Development/GoProject && export GOPATH=~/Development/GoProject && export PATH=$PATH"
alias cdss="cd /Users/zhuhaihua/QNap/Development/seasun/gopath && export GOPATH=/Users/zhuhaihua/QNap/Development/seasun/gopath && export PATH=$PATH"
alias cdwork="cd /Users/zhuhaihua/QNap/Works/西山居"
alias cdss2="cd /Users/zhuhaihua/QNap2/Development/seasun/gopath && export GOPATH=/Users/zhuhaihua/QNap2/Development/seasun/gopath && export PATH=$PATH"
alias cdssh="cd /Users/zhuhaihua/QNap/Works/西山居/SSH"
alias go="/usr/local/go/bin/go"
