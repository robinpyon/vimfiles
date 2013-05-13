" Change the current working directory to NERDTree root
let NERDTreeChDirMode=2

let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git[[dir]]', '\.hg', '\.svn', '\.bzr']

" Hide invisible files on launch
let NERDTreeShowHidden=0

" Make nerdtree look nice
" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" map <F3> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <leader>nt :NERDTreeFind<CR>
