if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline_theme='deep_space'

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#show_close_button = 0

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#hunks#enabled = 0

let g:airline#extensions#whitespace#max_lines = 3000

" Don't get in the way of other plugins using the preview window
let g:airline_exclude_preview = 1
