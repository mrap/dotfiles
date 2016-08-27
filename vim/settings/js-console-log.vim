autocmd FileType javascript nnoremap <Leader>o viw :s/\v(\s*)(.*)/\1console.log\('==> \2', \2\);/  <enter> :nohl <enter><CR>
