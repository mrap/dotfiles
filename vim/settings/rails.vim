autocmd FileType eruby call SetRailsOptions()
function SetRailsOptions()
  " Better key maps for switching between controller and view
  nmap <Leader>rv :Rview<cr>
  nmap <Leader>rc :Rcontroller<cr>
  nmap <Leader>rm :Emodel<Space>

  " TODO: think of more specific mapping, <C-K/J> causes a lot of accidentals
  " create <%= foo %> erb tags using Ctrl-k in edit mode
  " imap <silent> <C-K> <%=   %><Esc>3hi

  " create <%= foo %> erb tags using Ctrl-j in edit mode
  " imap <silent> <C-J> <%  %><Esc>2hi
endfunction
