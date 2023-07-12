"""""""""""""""""""
"  Core settings  "
"""""""""""""""""""
" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
" nobackup and noswapfile are importand to GPG security
set nobackup
set noswapfile

syntax enable
syntax on

set autoindent
set backspace=indent,eol,start
set bs=2
set cursorline
set encoding=utf-8
set expandtab
set exrc            " enable per-directory .vimrc files
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set ruler
set scrolloff=0
set secure          " disable unsafe commands in local .vimrc files
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set t_Co=256
set tabstop=2
set ttyfast
set visualbell

""""""""""""""""""
"   Navigation   "
""""""""""""""""""
" map <esc> key to `jk`
inoremap jk <esc>

" map <esc> to <nop>
inoremap <esc> <nop>

" tab navigation
nnoremap <S-h> gT
nnoremap <S-l> gt

" window navigation
nnoremap <tab> <C-w>w
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""""""""""""""""
"   Solarized   "
"""""""""""""""""
colorscheme solarized
" " this option darkens/dims all the fonts
" let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark

""""""""""""""""
"   Markdown   "
""""""""""""""""
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""
"  GPG  "
"""""""""
let g:GPGPreferArmor = 1
au BufRead,BufNewFile *.gpg set filetype=yaml

nnoremap <space>t o<C-r>=strftime("%F %H:%M ")<cr>
