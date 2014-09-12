set wildignore+=*.git,*.svn,node_modules

let g:ctrlp_match_window_reversed = 0           " list from top to bottom
let g:ctrlp_match_window_bottom = 0             " show at top of the screen
let g:ctrlp_max_height = 8
let g:ctrlp_switch_buffer = 0                   " don't switch to open buffer
let g:ctrlp_working_path_mode = 0               " don't manage working directory

" See: http://blog.patspam.com/2014/super-fast-ctrlp

" Use a custom matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Use ag over globpath()
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .dat
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "/.git"
  \ --ignore "/log"
  \ --ignore "/public"
  \ --ignore "/tmp"
  \ --ignore "**/*.pyc"
  \ -g ""'

nmap ; :CtrlPBuffer<CR>
