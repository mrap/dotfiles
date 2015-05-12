function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

" Show open buffers
command! FZFBuffers call fzf#run({
      \   'source':  reverse(<sid>buflist()),
      \   'sink':    function('<sid>bufopen'),
      \   'options': '+m',
      \   'down':    len(<sid>buflist()) + 2
      \ })<CR>

" Show most recent files
command! FZFMru call fzf#run({
      \'source': v:oldfiles,
      \'sink' : 'e ',
      \'options' : '-m',
      \})

nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FZFBuffers<CR>
nnoremap <silent> <Leader>T :FZFMru<CR>
