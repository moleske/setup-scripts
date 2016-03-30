call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

call plug#end()

set nocompatible

" View opts
set nu
set nowrap

" Tab opts
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Use system clipboard
set clipboard=unnamed

" Search options
set hlsearch
set ignorecase
set smartcase

" Remap leader key
:let mapleader="\<space>"

" Consistent and cool key mappings
nmap Y y$
vmap > >gv
vmap < <gv
nmap > >>
nmap < <<

" Open new buffers helpers
nmap <leader>sh :leftabove vnew<cr>
nmap <leader>sl :rightbelow vnew<cr>
nmap <leader>sk :leftabove new<cr>
nmap <leader>sj :rightbelow new<cr>

" Edit file helpers
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Resize buffers
if bufwinnr(1)
  nmap <leader>h <C-W><
  nmap <leader>j <C-W>-
  nmap <leader>k <C-W>+
  nmap <leader>l <C-W>>
endif

" Find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>\|]{7}( .*\|$)<CR>

" tComment
let g:tcommentMapLeader1 = ''
let g:tcommentMapLeaderOp1 = ''
let g:tcommentMapLeaderOp2 = ''
nmap <C-_> :TComment<CR>
vmap <C-_> :TCommentMaybeInline<CR>gv<ESC>
imap <C-_> <C-O>:TComment<CR>

" The Silver Searcher
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Be reasonable - it's not 1964
set mouse=a

" Colorscheme
set background=dark
colorscheme evolution

" Gitgutter
highlight clear SignColumn

" Hightlight and Remove trailing whitespace
match ErrorMsg '\s\+$'
nmap <leader>rtw :%s/\s\+$//e<CR>

" With great power, comes great responsibility
cmap sudow w !sudo tee % >/dev/null

" Auto add/remove go packages
let g:go_fmt_command = "goimports"
autocmd FileType go set tabstop=4 shiftwidth=4

" JS Formatting
autocmd FileType javascript set tabstop=4 shiftwidth=4 expandtab
