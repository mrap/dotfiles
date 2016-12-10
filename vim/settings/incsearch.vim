map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)

" * and # won't move the cursor until a next/prev search jump.
let g:incsearch#auto_nohlsearch = 1
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl)<Plug>(asterisk-*)
map # <Plug>(incsearch-nohl)<Plug>(asterisk-#)
