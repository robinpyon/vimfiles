" wildignore and g:ctrlp_custom_ignore only apply when globpath() is used to
" scan for files, they do not apply when g:ctrlp_user_command is being used

" set wildignore+=*.git,*.svn,node_modules,bower_components
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$|\bower_components$|\node_modules$|\',
"   \ 'file': '\.exe$\|\.so$\|\.dat$'
"   \ }

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
  \ --ignore .swo
  \ --ignore .swp
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "/.git"
  \ --ignore "/bower_components"
  \ --ignore "/log"
  \ --ignore "/node_modules"
  \ --ignore "/public"
  \ --ignore "/tmp"
  \ --ignore "**/*.pyc"
  \ -g ""'

" nmap ; :CtrlPBuffer<CR>
