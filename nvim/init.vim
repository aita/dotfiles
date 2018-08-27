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
" unite
nnoremap <Leader>uu :Unite<Space>
nnoremap <Leader>uf :Unite file<CR>
nnoremap <Leader>ub :Unite buffer<CR>
nnoremap <Leader>uB :Unite buffer_tab<CR>
nnoremap <Leader>ur :Unite register<CR>
nnoremap <Leader>ut :Unite tab<CR>
nnoremap <Leader>ug :Unite vimgrep<CR>
nnoremap <Leader>um :Unite mapping<CR>
" bookmark
nnoremap <Leader>b :UniteBookmarkAdd<CR>
nnoremap <Leader>B :Unite bookmark<CR>

" disable completeopt preview
set completeopt-=preview

"merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp^=" . g:opamshare . "/merlin/vim"
execute "set rtp^=" . g:opamshare . "/ocp-indent/vim"


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Required:
  call dein#add(s:dein_repo_dir)

  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" " If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

"End dein Scripts-------------------------

filetype plugin indent on
syntax enable
