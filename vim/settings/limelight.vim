" Limelight on by default
autocmd VimEnter * Limelight

nmap <silent> <Leader>l :Limelight!!<CR>
let g:limelight_default_coefficient = 0.618

" Goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
