set rtp+=/usr/local/Cellar/fzf/HEAD

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

" Select buffer
command! FZFBuffers call fzf#run({
\ 'source':  reverse(<sid>buflist()),
\ 'sink':    function('<sid>bufopen'),
\ 'options': '+m',
\ 'down':    len(<sid>buflist()) + 2 })

" Filtered recent files and open buffers
command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader>b :FZFBuffers<CR>
nnoremap <silent> <Leader>B :FZFMru<CR>

" Fix hanging buffer lists
" See: https://github.com/junegunn/fzf/issues/544
let g:airline#extensions#branch#enabled = 0

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
