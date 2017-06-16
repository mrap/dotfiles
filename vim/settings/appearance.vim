syntax on

let g:neosolarized_italic = 1
colorscheme NeoSolarized

" No tab blocks
hi SpecialKey ctermbg=NONE guibg=NONE

" italic comments
hi Comment cterm=italic gui=italic

function! HighlightCommentsOnly()
  hi Constant ctermfg=NONE guifg=NONE
  hi Identifier ctermfg=NONE guifg=NONE
  hi Number ctermfg=NONE guifg=NONE
  hi PreProc ctermfg=NONE guifg=NONE
  hi Special ctermfg=NONE guifg=NONE
  hi Statement ctermfg=NONE guifg=NONE
  hi Title ctermfg=NONE guifg=NONE
  hi Type ctermfg=NONE guifg=NONE
endfunction

autocmd Filetype go,java,javascript,javascript.jsx,swift call HighlightCommentsOnly()

" Keep the line number gutter narrow so three digits is cozy.
set numberwidth=2

" Enable neovim 24-bit color support and insert cursor.
if has("nvim")
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  if has("termguicolors")
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    set termguicolors
  endif
end
