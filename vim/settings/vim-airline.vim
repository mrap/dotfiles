set laststatus=2 "show airline all the time

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
