let g:ag_highlight=1

" Ag visual selection
vmap <Leader>A <Plug>AgActionVisual

" Ag current word
nmap <Leader>A <Plug>AgActionWord

" Open the Ag command and place the cursor into the quotes
nnoremap <Leader>a :Ag ""<Left>

" Search for usages of the current file
nnoremap <Leader>af :exec "Ag " . expand("%:t:r")<CR>
