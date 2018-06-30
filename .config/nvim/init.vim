set nu
set noswapfile


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/aita/.cache/dein/repos/github.com/Shougo/dein.vim


" Required:
if dein#load_state('/home/aita/.cache/dein')
  call dein#begin('/home/aita/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/aita/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:toml_dir = expand('~/.config/nvim')
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

filetype plugin indent on
syntax enable

