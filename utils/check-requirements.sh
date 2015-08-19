#!/bin/bash
echo "test result should be:"
echo "python3 >= 3.4.0"
echo "pip3 >= 1.5.4"
echo "virtualenv >= 1.11.4"
echo "mkvirtualenv >= 1.11.4"
echo "git >= 1.9.1"
echo "======================="

#python3
TEST='python3'
CMD='python3 --version'
RUN=`$CMD`
ARRAY=($RUN)
VERSION=${ARRAY[1]}
echo "$TEST=${VERSION}"

#pip3
TEST='pip3'
CMD='pip3 --version'
RUN=`$CMD`
ARRAY=($RUN)
VERSION=${ARRAY[1]}
echo "$TEST=${VERSION}"

#virtualenv
TEST='virtualenv'
CMD='virtualenv --version'
RUN=`$CMD`
ARRAY=($RUN)
VERSION=${ARRAY[0]}
echo "$TEST=${VERSION}"

#mkvirtualenv
TEST='mkvirtualenv'
source `locate virtualenvwrapper.sh`
CMD='mkvirtualenv --version'
RUN=`$CMD`
ARRAY=($RUN)
VERSION=${ARRAY[0]}
echo "$TEST=${VERSION}"

#git
TEST='git'
CMD='git --version'
RUN=`$CMD`
ARRAY=($RUN)
VERSION=${ARRAY[2]}
echo "$TEST=${VERSION}"
