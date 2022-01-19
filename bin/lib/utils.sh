#!/bin/bash

function error {
  echo "[error] $@" >&2
  exit 1
}
function info {
  echo "[info] $@"
}

function invoke {
  info $@
  $@ || error "コマンドの実行に失敗しました"
}