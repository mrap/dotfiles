let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

nnoremap <silent> <Leader>t :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>T :History<CR>
nnoremap <silent> <Leader>gs :GFiles?<CR>
nnoremap <silent> <Leader>gl :BCommits<CR>
nnoremap <silent> <Leader>gL :Commits<CR>

imap <C-p> <Plug>(fzf-complete-line)

let g:fzf_layout = { 'window': 'enew' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)


let g:rg_command = 'rg --column --line-number --no-heading --color=always '
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1,
  \                   <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                   <bang>0)

nnoremap <Leader>A :Rg!<space>
" Ag visual selection
vnoremap <Leader>a y:Rg! <C-r>=fnameescape(@")<CR><CR>
" Ag current word
nnoremap <Leader>a :exec "Rg! " . expand("<cword>")<CR>
