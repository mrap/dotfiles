let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_term_enabled = 1

let g:go_snippet_engine = "neosnippet"

"Mappings
au FileType go nmap <leader>gr <Plug>(go-run-vertical)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)

au FileType go nmap gD <Plug>(go-doc)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>e <Plug>(go-rename)

"Highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Indents match gofmt
au BufRead,BufNewFile *.go set noet ts=4 sw=4
