let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_open_list = 2
let g:neomake_list_height = 3

autocmd! BufWritePost,BufWinEnter * Neomake

