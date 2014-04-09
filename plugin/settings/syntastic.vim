" mark syntax errors with :signs
let g:syntastic_enable_signs=1

" automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

" Show the error list automatically
let g:syntastic_auto_loc_list=1

let g:syntastic_mode_map = {  'mode': 'active',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': ['html'] }
