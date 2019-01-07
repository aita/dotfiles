set nu
set backspace=start,eol,indent
set autoindent
set smartindent
set ignorecase
set smartcase

set showcmd
set hidden
set autoread
set nobackup
set noswapfile

" set space as the <Leader> key"
let mapleader = "\<Space>"
set timeoutlen=3000

" mapping for <Leader> key
" nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" tab
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>n gt
nnoremap <Leader>p gT
set completeopt-=preview

filetype plugin indent on
syntax enable
