let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

let g:neomake_swift_swiftfmt_maker = {
      \ 'exe': 'swiftlint',
      \ 'args': ['autocorrect', '--quiet', '--format', '--path'],
      \ 'errorformat':
          \ '%E%f:%l:%c: error: %m,' .
          \ '%W%f:%l:%c: warning: %m,' .
          \ '%E%f:%l: error: %m,' .
          \ '%W%f:%l: warning: %m,' .
          \ '%Z%\s%#^~%#,' .
          \ '%-G%.%#'
      \ }

let g:neomake_swift_swiftlint_maker = {
      \ 'exe': 'swiftlint',
      \ 'args': ['lint', '--path'],
      \ 'errorformat':
          \ '%E%f:%l:%c: error: %m,' .
          \ '%W%f:%l:%c: warning: %m,' .
          \ '%E%f:%l: error: %m,' .
          \ '%W%f:%l: warning: %m,' .
          \ '%Z%\s%#^~%#,' .
          \ '%-G%.%#'
      \ }
let g:neomake_swift_enabled_makers = ['swiftlint']

let g:neomake_open_list = 2
let g:neomake_list_height = 3

autocmd! BufWritePost,BufWinEnter * Neomake

