if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then 
	source ~/.bash_aliases
fi

export BREW_HOME="/usr/local/Cellar"
export REDIS_HOME="$BREW_HOME/redis@3.2/3.2.11"
export MYSQL_HOME="$BREW_HOME/opt/mysql@5.6"
export GOROOT="/usr/local/go/"
#export GOPATH=$HOME/Development/GoProject;$HOME/Development/jxserver/server/code/source/GoServices
#export GOPATH="$HOME/QNap/homes/admin/Development/seasun/gopath/"
export GOPATH="$HOME/Development/GoMituan"
export GOOS="darwin"
export GOARCH="amd64"
#export ISTIO_HOME="$HOME/.minikube/istio-0.8.0"
export ISTIO_HOME="$HOME/bin/istio/bin"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ADB_HOME="$HOME/Library/Android/sdk/platform-tools"
#export MONO_HOME="/Applications/Unity/Unity.app/Contents/Frameworks/Mono"
export JVMSTAT_HOME="$HOME/Applications/jvmstat"
export PATH="$PATH:$JVMSTAT_HOME/bin:$ADB_HOME:$GOPATH/bin:$REDIS_HOME/bin:/Applications/Redis.app/Contents/Resources/Vendor/redis/bin"

_SHELL=`ps | grep $$ | grep -v grep | awk '{print $4}'`
_IS_BASH=`echo ${_SHELL} | grep "bash"`
if [ -n "$_IS_BASH" ]; then
  # export PS1='%T ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
  export PS1="[\u@\h \W]\$ "
fi

export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
export JVMSTAT_JAVA_HOME="$JAVA_HOME"
export MAVEN_HOME="/usr/local/maven/apache-maven-3.3.9"
export GRADLE_HOME="/usr/local/gradle/gradle-3.4"
export PATH=$BREW_HOME/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH/bin:$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin:~/bin:$MYSQL_HOME/bin:$ISTIO_HOME/bin/

export HOMEBREW_GITHUB_API_TOKEN="4eabbfd877bdde14759617ff743a71907a650eb4"

# alias getopt="/usr/local/Cellar/gnu-getopt/1.1.6/bin/getopt"
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

# alias python="/usr/bin/python"
alias svn="/usr/local/bin/svn"
alias ctags="/usr/local/bin/ctags"

alias mck="sshfs root@10.20.109.128:/root/CKS1 ~/Development/share/"

#mono '$HOME/.vim/bundle/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe' -p 2000 -s '$HOME/Development/unity/2DPlatformer-SLua/2DPlatformer-SLua.sln'
alias cs="mono '$HOME/.vim/bundle/omnisharp-vim/server/OmniSharp/bin/Debug/OmniSharp.exe' -p 2000"

alias Unity="/Applications/Unity/Unity.app/Contents/MacOS/Unity"
alias unity=Unity

#alias gcc="/usr/local/bin/gcc"
#alias g++="/usr/local/bin/g++"
#alias gc="git commit -m "
#alias gpush="git push"
#alias gpull="git pull"
#alias gs="git status"
#alias gl="git log"
# alias gcSm="git commit -S -m"
# alias gdh="git diff HEAD"
alias cddev="cd ~/Development/GoProject && export GOPATH=~/Development/GoProject && export PATH=$PATH"
alias cdmini="cd ~/Development/GoProject/src/minigame && export GOPATH=~/Development/GoProject && export PATH=~/Development/GoProject/bin:$PATH"
alias cdmt="cd ~/Development/GoMituan/src/gitlab.com/mituan"
alias cdss="cd $HOME/QNap/Development/seasun/gopath && export GOPATH=$HOME/QNap/Development/seasun/gopath && export PATH=$PATH"
alias cdwork="cd $HOME/QNap/Works/西山居"
alias cdss2="cd $HOME/QNap2/Development/seasun/gopath && export GOPATH=$HOME/QNap2/Development/seasun/gopath && export PATH=$PATH"
alias cdssh="cd $HOME/QNap/Works/西山居/SSH"
alias go="/usr/local/go/bin/go"
