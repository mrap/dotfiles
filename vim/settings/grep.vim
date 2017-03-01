" Use the fastest tool available.
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
elseif executable('ag')
  set grepprg=ag
  let g:grep_cmd_opts = '--line-numbers --noheading'
else
  set grepprg=git\ grep
  let g:grep_cmd_opts = '--line-number'
endif
