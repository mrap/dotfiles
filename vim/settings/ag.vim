let g:ag_highlight=1

" Ag current word
nnoremap <Leader>a :exec "Ag " . expand("<cword>")<CR>

" Open the Ag command and place the cursor into the quotes
nnoremap <Leader>A :Ag<space>
