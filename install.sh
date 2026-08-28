#!/bin/bash

mkdir -p ~/.vim
mkdir -p ~/.config/kitty

cat > ~/.vimrc << 'EOF'
set nocompatible
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set wrap
set linebreak
set showcmd
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]
EOF

cat > ~/.config/kitty/kitty.conf << 'EOF'
# Basic Kitty configuration
font_family      Fira Code
font_size        12.0
window_padding_width 4
enable_audio_bell no
enable_visual_bell no
EOF

echo "dotfiles built successfully!"
