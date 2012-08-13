let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

let g:ctrlp_working_path_mode = 0               " don't manage working directory
let g:ctrlp_match_window_reversed = 0           " list from top to bottom

nmap <C-B> :CtrlPBuffer<CR>
nmap <C-M> :CtrlPMRU<CR>
