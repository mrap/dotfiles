" This loads after the yadr plugins so that plugin mappings can
" be overwritten.

if filereadable(expand("~/.yadr/vim/after/.vimrc.after"))
  source ~/.yadr/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" italic comments
highlight Comment cterm=italic

" Respect <Leader>
unmap ,
unmap ,<C-s>
nnoremap <silent> <Leader><C-s> :call RelatedSpecOpen()<CR>

" Easier basic commands
nnoremap <Leader><Leader> V
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>
unmap <Leader>q/
unmap <Leader>qa/
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa<CR>

noremap , :
