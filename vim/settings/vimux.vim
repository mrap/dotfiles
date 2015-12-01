let g:VimuxUseNearest = 1

" Prompt for a command to run
map <Leader>;p :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>;l :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>;i :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>;q :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>;x :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>;z :call VimuxZoomRunner()<CR>
