" Use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ack_highlight=1

nnoremap <Leader>A :Ack<space>
" Ag visual selection
vnoremap <Leader>a y:Ack <C-r>=fnameescape(@")<CR><CR>
" Ag current word
nnoremap <Leader>a :exec "Ack " . expand("<cword>")<CR>
