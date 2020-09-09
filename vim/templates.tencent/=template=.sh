#!/usr/bin/env bash
# Copyright %YEAR%, Tencent Inc.
# All rights reserved.
#
# Description: %FILE%
# Author: %USER% <%MAIL%>
# Since: %FDATE%

set -o errexit

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
PLAIN='\033[0m'

CWD=$(pwd)

function exits() {
  if [[ -n "$2" ]]; then
    echo $2
  fi
  cd $CWD
  exit $1
}

# 获取参数1的绝对目录位置，请通过反引号获取返回值
function absdir() {
  if [[ -d "$1" ]]; then
    cd $1
    echo `pwd`
	elif [[ -f "$1" ]]; then
		cd `dirname $1`
		echo `pwd`
  else
    exits 1 "no such file or directory: $1"
  fi
}

pushd () {
  command pushd "$@" > /dev/null
}

popd () {
  command popd "$@" > /dev/null
}
#================== common function end ==================

