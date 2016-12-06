syntax on

colorscheme flattened_light

" No tab blocks
hi SpecialKey ctermbg=NONE guibg=NONE

" italic comments
hi Comment cterm=italic gui=italic

function! HighlightCommentsOnly()
  hi Constant ctermfg=NONE guifg=NONE
  hi Statement ctermfg=NONE guifg=NONE
  hi Type ctermfg=NONE guifg=NONE
  hi Number ctermfg=NONE guifg=NONE
  hi Identifier ctermfg=NONE guifg=NONE
  hi PreProc ctermfg=NONE guifg=NONE
  hi Special ctermfg=NONE guifg=NONE
endfunction

autocmd Filetype go,java,javascript,javascript.jsx call HighlightCommentsOnly()
