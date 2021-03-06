# Adds an alias to the current shell and to this file.
# Borrowed from Mislav (http://github.com/mislav/dotfiles/tree/master/bash_aliases)
add-alias ()
{
   local name=$1 value=$2
   echo "alias $name='$value'" >> ~/.bash_aliases
   eval "alias $name='$value'"
   alias $name
}

alias expgm='export GOPATH=/Users/kc/Development/mituan && export PATH=~/Development/mituan/bin:~/Development/GoProject/bin:$PATH && export GO111MODULE=on'
alias exphelm='export PATH=~/Development/helm-2.11.0:$PATH'
############################################################
## kubernets and docker
############################################################
alias kc="kubectl"
alias ic="istioctl"
alias dk="docker"
alias dfimg="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock centurylink/dockerfile-from-image"

############################################################
## golang
############################################################
alias gob="go build"
alias gor="go run main.go"

############################################################
## vim
############################################################
alias vi=vim
alias v=vim
alias mvim=/Applications/mvim
alias mvi=mvim
alias vm=mvim
alias nv=nvim
alias n=nvim

############################################################
## tmux
############################################################
alias x="tmux"
alias xls="tmux ls"
alias xnew="tmux new -s"
alias xat="tmux a -t "
alias xkt="tmux kill-session -t "

############################################################
## screen
############################################################
alias sc="screen"
alias scls="screen -ls"
alias scr="screen -r"

############################################################
## Bash
############################################################

if [ `uname` = "Darwin" ]; then
	alias rmt="rmtrash"
	alias trash="rmtrash"
	alias del="rmtrash"
fi

alias q='exit'
alias sudo='sudo ' 
alias xargs='xargs '
alias env='env '
alias nohup='nohup '
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias ~="cd ~"

alias c="clear"

alias path='echo -e ${PATH//:/\\n}'
alias ax="chmod a+x"

alias pd='pushd'
alias ppd='popd'

############################################################
## List
############################################################

if [[ `uname` == 'Darwin' ]]; then
  alias ls="ls -G"
  # good for dark backgrounds
  export LSCOLORS=gxfxcxdxbxegedabagacad
else
  alias ls="ls --color=auto"
  # good for dark backgrounds
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
  # For LS_COLORS template: $ dircolors /etc/DIR_COLORS
fi

alias l="ls"
alias ll="ls -lh"
alias la="ls -a"
alias lal="ls -alh"
alias lla="lal"

############################################################
## Git
############################################################

alias g="git"
alias ga="git add"
alias gb="git branch -a -v"
alias gc="git commit -v -m"
alias gcSm="git commit -S -m"
alias gca="git commit -v -a"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gl="git pull"
alias glr="git pull --rebase"
alias gf="git fetch"
alias gp="git push"
alias gs="git status -sb"
alias gr="git remote"
alias grp="git remote prune"
alias gcp="git cherry-pick"
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gcl="git clone"
alias gsl="git shortlog -sn"
alias gw="git whatchanged"
alias gsu="git submodule update --init --recursive"
alias gi="git config branch.master.remote 'origin'; git config branch.master.merge 'refs/heads/master'"
if [ `which hub 2 > /dev/null` ]; then
  alias git="hub"
fi
alias git-churn="git log --pretty="format:" --name-only | grep -vE '^(vendor/|$)' | sort | uniq -c | sort"

function gsd {
  target=${1%/}
  git submodule deinit $target
  git rm -f $target
  rm -rf .git/modules/$target
}

# Useful report of what has been committed locally but not yet pushed to another
# branch.  Defaults to the remote origin/master.  The u is supposed to stand for
# undone, unpushed, or something.
function gu {
  local branch=$1
  if [ -z "$1" ]; then
    branch=master
  fi
  if [[ ! "$branch" =~ "/" ]]; then
    branch=origin/$branch
  fi
  local cmd="git cherry -v $branch"
  echo $cmd
  $cmd
}

function gco {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $*
  fi
}

function gprune {
  local remote=$1
  if [ -z "$1" ]; then
    remote=origin
  fi
  local cmd="git remote prune $remote"
  echo $cmd
  $cmd
}

function st {
  if [ -d ".svn" ]; then
    svn status
  else
    git status -sb
  fi
}

############################################################
## Subversion
############################################################

# Remove all .svn folders from directory recursively
alias svn-clean='find . -name .svn -print0 | xargs -0 rm -rf'

############################################################
## OS X
############################################################

# Get rid of those pesky .DS_Store files recursively
alias dstore-clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

# Track who is listening to your iTunes music
alias whotunes='lsof -r 2 -n -P -F n -c iTunes -a -i TCP@`hostname`:3689'

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

############################################################
## Ruby
############################################################

alias rtags="ctags -e -R app lib vendor tasks"

function gemdir {
  echo `gem env gemdir`
}

function gemfind {
  local gems=`gemdir`/gems
  echo `ls $gems | grep -i $1 | sort | tail -1`
}

# Use: gemcd <name>, cd's into your gems directory
# that best matches the name provided.
function gemcd {
  cd `gemdir`/gems/`gemfind $1`
}

# Use: gemdoc <gem name>, opens the rdoc of the gem
# that best matches the name provided.
function gemdoc {
  open `gemdir`/doc/`gemfind $1`/rdoc/index.html
}

alias rhash="rbenv rehash"

function update-rubygems {
  cyan=`tput setaf 6`
  reset=`tput sgr0`
  for version in `rbenv whence gem`; do
    rbenv shell "$version"
    echo
    echo "${cyan}Updating rubygems for ${version}${reset}"
    gem update --system --quiet
    echo
    echo "${cyan}Updating bundler for ${version}${reset}"
    gem update bundler --quiet
  done
}

############################################################
## Bundler
############################################################
function ignore_vendor_ruby {
  grep -q 'vendor/ruby' .gitignore > /dev/null
  if [[ $? -ne 0 ]]; then
    echo -e "\nvendor/ruby" >> .gitignore
  fi
}

alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && bundle package"
alias ba="bundle-audit update && bundle-audit"

function bil {
  if [ -f ./vendor/cache ]; then
    bi --local $*
  else
    bi $*
  fi
}

############################################################
## Middleman
############################################################
alias m="be middleman"

############################################################
## Heroku
############################################################

function heroku_command {
  if [ -z "$*" ]; then
    echo "run console"
  else
    echo "$*"
  fi
}

function hstaging {
  heroku `heroku_command $*` --remote staging
}

function hproduction {
  heroku `heroku_command $*` --remote production
}

alias deploy_hproduction='hproduction maintenance:on && git push production && hproduction run rake db:migrate && hproduction maintenance:off'
alias deploy_hstaging='hstaging maintenance:on && git push staging && hstaging run rake db:migrate && hstaging maintenance:off'

############################################################
## Rails
############################################################

alias tl="tail -f log/development.log"
alias ss="spring stop"

# Rails 3 or 4
function r {
  if [ -e "script/rails" ]; then
    script/rails $*
  else
    rails $* # Assumes ./bin is in the PATH
  fi
}

# Pow / Powder
alias p="powder"

############################################################
## MongoDB
############################################################
alias repair-mongo="rm /usr/local/var/mongodb/mongod.lock && mongod --repair"

############################################################
## Media
############################################################

# brew install ffmpeg --with-libvorbis --with-theora --with-fdk-aac --with-tools
function mp32ogg {
  file=$1
  ffmpeg -i "$file" -c:a libvorbis -q:a 4 $(basename ${file} .mp3).ogg
}

function ogg2mp3 {
  file=$1
  ffmpeg -i "$file" -c:a libmp3lame $(basename ${file} .ogg).mp3
}

############################################################
## Emacs
############################################################

alias e="emacsclient -nw"
alias install_emacs='brew install emacs --srgb --with-cocoa'
alias install_emacs_head='brew install emacs --HEAD --srgb --with-cocoa'
alias link_emacs='ln -snf /usr/local/Cellar/emacs/24.5/bin/emacs /usr/local/bin/emacs && ln -snf /usr/local/Cellar/emacs/24.5/bin/emacsclient /usr/local/bin/emacsclient && brew linkapps emacs'
alias link_emacs_head='ln -snf /usr/local/Cellar/emacs/HEAD/bin/emacs /usr/local/bin/emacs && ln -snf /usr/local/Cellar/emacs/HEAD/bin/emacsclient /usr/local/bin/emacsclient && brew linkapps emacs'
alias upgrade_emacs='brew uninstall emacs && install_emacs && link_emacs'
alias upgrade_emacs_head='brew uninstall emacs && install_emacs_head && link_emacs_head'

############################################################
## Miscellaneous
############################################################

alias install_ffmpeg='brew install ffmpeg --with-libvorbis --with-theora --with-fdk-aac --with-faac --with-tools'

export GREP_COLOR="1;37;41"
alias grep="grep --color=auto -n"
alias wgeto="wget -q -O -"
alias sha1="openssl dgst -sha1"
alias sha2="openssl dgst -sha256"
alias sha512="openssl dgst -sha512"
alias b64="openssl enc -base64"
alias 256color="export TERM=xterm-256color"
alias prettyjson="python -mjson.tool"


alias python=/usr/bin/python

function flushdns {
  if pgrep mDNSResponder > /dev/null
  then # OS X <= 10.9
    dscacheutil -flushcache
  else # OS X >= 10.10
    sudo discoveryutil udnsflushcaches
  fi
}

alias whichlinux='uname -a; cat /etc/*release; cat /etc/issue'

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

function serve {
  local port=$1
  : ${port:=3000}
  ruby -rwebrick -e"s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd, :MimeTypes => WEBrick::HTTPUtils::load_mime_types('/etc/apache2/mime.types')); trap(%q(INT)) { s.shutdown }; s.start"
}

function eachd {
  for dir in *; do
    cd $dir
    echo $dir
    $1
    cd ..
  done
}

function fakefile {
  let mb=$1
  let bytes=mb*1048576
  dd if=/dev/random of=${mb}MB-fakefile bs=${bytes} count=1 &> /dev/null
}

############################################################
