if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')

set runtimepath+=~/.vim/dein-plugins

runtime appearance.vim
runtime languages.vim
runtime vim-improvements.vim
runtime ruby.vim
runtime git.vim
runtime textobjects.vim
runtime search.vim
runtime project.vim

call dein#end()

" Ensure all plugins are installed.
if dein#check_install()
  call dein#install()
endif
