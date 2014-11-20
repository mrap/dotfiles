" Make it beautiful - colors and fonts


set t_Co=256
" ================ Solarized Colorscheme ========================
" http://ethanschoonover.com/solarized/vim-colors-solarized
" colorscheme solarized
" set background=dark
" ================ Railscasts Colorscheme ========================
" set background=dark
" colorscheme base16-default
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=0   ctermfg=3
" highlight Search       ctermbg=0   ctermfg=9
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=0   ctermfg=3
" highlight SpellBad     ctermbg=0   ctermfg=1
" ================ Vimbrant Colorscheme ========================
" set background=dark
" colorscheme vimbrant
" highlight ColorColumn ctermbg=7
" highlight ColorColumn guibg=Gray
" ================ Monokai Colorscheme ========================
" set background=dark
" colorscheme Monokai
" highlight ColorColumn ctermbg=7
" highlight ColorColumn guibg=Gray
" ================ Pencil Colorscheme ========================
colorscheme pencil
set background=dark
let g:pencil_higher_contrast_ui = 0   " 0=low (def), 1=high"
let g:pencil_terminal_italics = 1
let g:airline_theme = 'pencil'
hi LineNr ctermfg=Gray
hi Normal ctermbg=None

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256
  " Enable solarized
  " colorscheme solarized
  " set background=dark

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  if has("gui_gtk2")
    set guifont=Inconsolata\ XL\ 12,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
  end
else
  let g:CSApprox_loaded = 1

  " For people using a terminal that is not Solarized
  " if exists("g:yadr_using_unsolarized_terminal")
  "   let g:solarized_termcolors=256
  "   let g:solarized_termtrans=1
  " end
endif

