syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 20
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set autoindent

colorscheme lunaperche

autocmd FileType c,cpp setlocal cindent
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType c,cpp setlocal commentstring=//\ %s

autocmd FileType nasm setlocal tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType nasm setlocal commentstring=;\ %s

set showmatch
set matchtime=2
set scrolloff=5
set cursorline
set signcolumn=yes
set wildmenu
set hidden
set undofile

set hlsearch

set tags=./tags;,tags

let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <Esc> :nohlsearch<CR>



call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()


if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete

    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_config
    autocmd!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set completeopt=menuone,noinsert,noselect
