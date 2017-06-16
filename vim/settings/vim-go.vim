let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_updatetime = 1000
let g:go_term_enabled = 1

let g:go_snippet_engine = "neosnippet"

let g:go_def_mode = 'godef'
let g:go_def_mapping_enabled = 0

"Mappings
au FileType go nmap <leader>gr <Plug>(go-run-vertical)

au FileType go nmap gd <Plug>(go-def-split)
au FileType go nmap gt <Plug>(go-def-tab)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
