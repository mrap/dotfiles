if has("nvim")
  " Use Vim settings, rather then Vi settings (much better!).
  " This must be first, because it changes other options as a side effect.
  set nocompatible
endif

" =============== Plugin Initialization ===============

if filereadable(expand("~/.vim/dein.vim"))
  source ~/.vim/dein.vim
endif

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.nvimrc.before if it exists.
if filereadable(expand("~/.nvimrc.before"))
  source ~/.nvimrc.before
endif

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Change leader to <Space> because the backslash is too far away
" That means all \x commands turn into <Space>x
" The mapleader has to be set before we load any plugins
let mapleader = "\<Space>"

" , as : for an easier vim command line
noremap , :

" Easier q
nnoremap <Leader>q :Sayonara<CR>
nnoremap <Leader>Q :qa<CR>

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  if !isdirectory($HOME."/.vim/undos")
    call mkdir($HOME."/.vim/undos", "", 0700)
  endif
  set undodir=~/.vim/undos
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=2       "deepest fold is 2 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/undos*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Custom Settings ========================
so ~/.yadr/vim/settings.vim

" Per project vim settings
" Source: http://www.ilker.de/specific-vim-settings-per-project.html
set exrc "enable per project settings with .exrc
set secure "disables from allowing exrc to execute shell commands

" Command history filters like Up and Down
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" No ESC delay when switching back to normal mode
set ttimeoutlen=0

" K splits line (opposite of J)
nnoremap K i<cr><esc>k$

" Neovim python support
if has("nvim")
  let g:python_host_prog = '/usr/local/bin/python2'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

" Faster tab navigation
nnoremap H :tabp<CR>
nnoremap L :tabn<CR>

" What arrow keys?
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
