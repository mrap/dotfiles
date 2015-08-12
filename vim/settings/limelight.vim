let g:limelight_default_coefficient = 0.618

" Toggle on/off
nmap <silent> <Leader>l :Limelight!!<CR>

" Goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
