syntax on

colorscheme embark

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

" Keep the line number gutter narrow so three digits is cozy.
set numberwidth=2

" Enable neovim 24-bit color support and insert cursor.
if has("nvim")
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " Blinking cursor
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        \,sm:block-blinkwait175-blinkoff150-blinkon175


  if has("termguicolors")
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    set termguicolors
  endif
end
