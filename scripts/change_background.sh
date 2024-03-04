#!/bin/zsh
config_file="/Users/dvisner/.config/nvim/lua/dvisner/lazy/colors.lua"

if [ ! -f $config_file ]; then
    echo "Error: alacritty config file not found"
    exit 1
fi

current_datetime=$(date +%H)
current_theme="light"

if [ "$current_datetime" -ge 18 ]; then
    current_theme="dark"
fi

sed -i'.bak' "s/\(vim.o.background = \"\)[^\"].*/\1$current_theme\"/" $config_file
