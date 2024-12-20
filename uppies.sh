#!/bin/bash
$KVIM_START_DIR="~/.config/kittenvim"
$XDG_CONFIG_HOME="$XDG_CONFIG_HOME:$KVIM_START_DIR/.config"
$XDG_DATA_HOME="$XDG_DATA_HOME:$KVIM_START_DIR/.local/share"
$XDG_STATE_HOME="$XDG_STATE_HOME:$KVIM_START_DIR/.local/state"
$XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR:$KVIM_START_DIR"
#/tmp/nvim.user/xxx
$XDG_CACHE_HOME="$XDG_CACHE_HOME:$KVIM_START_DIR/.cache/nvim"
$NVIM_LOG_FILE="$NVIM_LOG_FILE:$KVIM_START_DIR/.local/state/nvim"
#$XDG_CONFIG_DIRS="$XDG_CONFIG_DIRS:$KVIM_START_DIR/etc/xdg"
#$XDG_DATA_DIRS="$XDG_DATA_DIRS:$KVIM_START_DIR/usr/local/share:$KVIM_START_DIR/usr/share"
$NVIM_APPNAME="kittenvim"
alias kvim="nvim" 