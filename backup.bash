#!/usr/bin/env bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

BASE_DIR=$(dirname "$(realpath "$0")")

##########################################
# Backup local folders

tar cfvz $BASE_DIR/backup/home.tar.gz \
  $HOME/.ssh \
  $HOME/.thunderbird \
  $HOME/.PhpStorm*

tar cfvz $BASE_DIR/backup/hosts.tar.gz /etc/hosts
