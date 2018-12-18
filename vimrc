execute pathogen#infect()

" Make sure pretiier is installed with yarn https://github.com/prettier/prettier
"
" Another plugin manager https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
  " format plugin: https://github.com/sbdchd/neoformat
  Plug 'sbdchd/neoformat'
call plug#end()

" auto format on save https://github.com/sbdchd/neoformat
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

" prettier
autocmd FileType javascript setlocal formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG

set runtimepath^=~/.vim/bundle/ctrlp.vim
filetype plugin on
filetype on

" Show hidden files in NERDTree
let NERDTreeShowHidden=1
" nnoremap <F2> :NERDTreeToggle<CR>
" Show NERDTree opened to current file
nnoremap <F2> :NERDTreeFind<CR>
" Open path of current file
" nnoremap <F2> :NERDTree %<CR>
" Let NERDTree usin netrw
let NERDTreeHijackNetrw=1
" File drawer width
let g:NERDTreeWinSize = 35

" use old regex engine
"set re=1
" turn off highlight matching pair
let g:loaded_matchparen=0

let g:syntastic_javascript_checkers = ['eslint']

" Set the leader key to ,. Default is \.
let mapleader = ","

"""""""""""""""""""
"  Core settings  "
"""""""""""""""""""
" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
syntax on
set autoindent
set backspace=indent,eol,start
set bs=2
set cursorline
set encoding=utf-8
set expandtab
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set ruler
set scrolloff=0
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
" filename tab completion
set wildmode=longest,list,full
set wildmenu

" clear search terms
nnoremap <leader><space> :noh<cr>
nnoremap <leader>e :Ex<cr>
nnoremap <leader>t :tabe %:h<cr>

set nobackup
set noswapfile

" wrapping text
" set nowrap
"set wrap linebreak
set wrap!
set textwidth=0
" set formatoptions=qrntcol1
set colorcolumn=81

" Toggle softwrap on/off
"command! -nargs=* Wrap set wrap linebreak nolist

" set file types
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
" markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" set Gemfile file types to Ruby
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Gemfile.lock set filetype=ruby
" format ruby hashes
nnoremap <F6> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>
" Turn off undo file for now.
" set undofile

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

""""""""""""""""""""""""""""""""""""""""""
" Solarize background and custom functions
""""""""""""""""""""""""""""""""""""""""""
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
" Toggle between light and dark vim settings
nnoremap <leader>b :call BackgroundToggle()<cr>
  let g:bg_toggle = 1
function! BackgroundToggle()
  if g:bg_toggle
    :set background=dark
    let g:bg_toggle = 0
  else
    :set background=light
    let g:bg_toggle = 1
  endif
endfunction

"""""""""""
" Folding "
"""""""""""
set foldnestmax=1
set foldmethod=syntax
set foldlevelstart=1

"""""""
" PHP "
"""""""
let php_folding=1
let g:DisableAutoPHPFolding = 1
map <F5> <Esc>:EnableFastPHPFolds<Cr>zm

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" Adds column to indicate folds
set foldcolumn=1
set fillchars="fold: "

" set .x as php file - not my idea
au BufRead,BufNewFile *.x set filetype=php

"""""""""
"  GPG  "
"""""""""
let g:GPGPreferArmor = 1
au BufRead,BufNewFile *.gpg set filetype=yaml

"""""""""""""""""""""
"  Custom hot keys  "
"""""""""""""""""""""

" set code paste
set pastetoggle=<F3>

" remove white spaces at end of line
:nnoremap <silent> <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Format visually selected JSON
:vnoremap <F8> :!python -m json.tool<CR>

" quickly open ~/.vimrc file in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" copy current line, paste, replace all chracters with <next key stroke>
nnoremap <leader>1 yypVr
" reuse whats been copied to register
xnoremap p pgvy

" map tab space to c-x c-o - omnicomplete
imap <leader><tab> <c-x><c-o>

" unmap shift k
nnoremap K <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" :let w:eighty_column_match = matchadd('ColorColumn', '\%81v.\+', 100)
