let g:startify_list_order = ['dir', 'files', 'bookmarks', 'sessions']

let g:startify_enable_special         = 0
let g:startify_files_number           = 5
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 0
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1

" Keep it minimal, keep it clean
let g:startify_custom_header = startify#fortune#boxed()
