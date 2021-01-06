let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_zoomwidth = 0

nmap <C-T> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_type_javascript = {
    \ 'ctagstype': 'javascript',
    \ 'kinds': [
    \ 'A:arrays',
    \ 'P:properties',
    \ 'T:tags',
    \ 'O:objects',
    \ 'G:generator functions',
    \ 'F:functions',
    \ 'C:constructors/classes',
    \ 'M:methods',
    \ 'V:variables',
    \ 'I:imports',
    \ 'E:exports',
    \ 'S:styled components'
\ ]}
