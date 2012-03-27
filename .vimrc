" VIM configuration
" Robin Pyon <robin [dot] pyon [at] gmail [dot] com>

" => Vundle required settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                        " disable file type detection for loading specific options
set rtp+=~/.vim/bundle/vundle/      " add vundle to runtimepath
call vundle#rc()
Bundle 'gmarik/vundle'              

    " My Bundles here:
    """"""""""""""""""
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'ap/vim-css-color'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'garbas/vim-snipmate'
    Bundle 'majutsushi/tagbar'
    Bundle 'mattn/zencoding-vim'
    Bundle 'MarcWeber/vim-addon-mw-utils'
    Bundle 'Raimondi/delimitMate'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'Shougo/neocomplcache'
    Bundle 'tomtom/tlib_vim'
    Bundle 'tomtom/tcomment_vim'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-markdown'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-ragtag'
    Bundle 'vim-scripts/JavaScript-Indent'
    Bundle 'vim-scripts/mru.vim'
    Bundle 'walm/jshint.vim'
    Bundle 'wincent/Command-T'

filetype plugin indent on           " enable loading plugins and indents based on file type (required for Vundle)


" => General Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " disable vi compatibility
set encoding=utf-8
set nomodeline                      " disable modeline
set clipboard=unnamed               " (MacVim) use system clipboard
set noerrorbells                    " disable error bells
set mouse=a                         " enable full mouse support
" set shell=/bin/bash\ -li            " enable interactive shell
" set shortmess=atI                   " suppress 'Press ENTER or type command to continue' messages
set wildmenu
set wildignore=*~,.git,tmp,*.log
set wildmode=list:longest,full


" => Visual options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                           " Enable syntax highlighting
set background=dark
set backspace=indent,eol,start      " ensure backspace works like in other programs
set colorcolumn=85
set cpoptions+=$
set cursorline
set diffopt=vertical                " default vimdiff to vertical split
set formatoptions+=1
set laststatus=2                    " always show statusbar
set linebreak                       " only wrap at word boundaries
set nolist                          " hide hidden characters
set listchars=tab:▸\ ,eol:¬         " set custom characters for non printable elements
" set number                        " show line numbers
set splitright                      " new horizontal splits on the right
set splitbelow                      " new vertical splits on the bottom
set textwidth=0
set wrap                            " wrap visually, rather than changing text in the buffer
colorscheme solarized


" => Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                        " highlight search items
set ignorecase                      " case insensitive search if search is all lowercase
set smartcase                       " case sensitive search if search contains uppercase characters
set incsearch                       " show 'best match so far' as search strings are typed


" => Indenting and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                      " keep indentation from previous line
set expandtab                       " use spaces in place of tab characters
set shiftwidth=4                    " number of spaces to use for autoindenting
set softtabstop=4                   " number of spaces to use when pressing <TAB> and pressing backspace
set tabstop=4                       " the width of a tab in spaces
set smartindent                     " automatically inserts indentation in some cases
set cindent                         " like smartindent, but stricter and more customisable


" => Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change cursor type when entering and exiting insert mode
if has('cursorshape')
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " Command-T
    """""""""""""""""""""""""""""""
    " Allow ESC and other keys to work as intended
    if &term =~ "xterm" || &term =~ "screen"
        let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
        let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
        let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
    endif
    let g:CommandTMaxHeight=15                      " set max window height

    " EasyMotion
    """""""""""""""""""""""""""""""
    " let g:EasyMotion_leader_key = '<Leader>' 

    " MRU
    """""""""""""""""""""""""""""""
    " nmap <C-m> :MRU<CR>

    " NERDCommenter
    """""""""""""""""""""""""""""""
    let g:NERDSpaceDelims=1                         " add extra space between comment delims

    " Neocomplcache
    """""""""""""""""""""""""""""""
    let g:neocomplcache_enable_at_startup = 1       " enable on startup

    " SnipMate
    """"""""""""""""""""""""""""""j"
    let g:snippets_dir="~/.vim/snippets/"

    " Solarized
    """""""""""""""""""""""""""""""
    call togglebg#map("<F5>")                       " toggle between dark and light modes
    let g:solarized_termcolors=16
    let g:solarized_visibility="normal"             " visibility mode of hidden characters

    " TagBar
    """""""""""""""""""""""""""""""
    let g:tagbar_type_javascript = {
        \ 'ctagsbin' : '/usr/local/bin/jsctags'
    \ }

    " T-Comment
    """""""""""""""""""""""""""""""
    " map <leader>c <c-_><c-_>

    " Plug-in: Zencoding.vim
    let g:user_zen_expandabbr_key = '<c-e>'


" => Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","                 " change the mapleader from \ to ,

" Easy navigation between windows
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use tidy when using the = operator
" http://vim.wikia.com/wiki/Cleanup_your_HTML#Using_tidy_for_html_files
" TODO: what is setlocal?
" :setlocal equalprg=tidyp\ -indent\ -quiet\ --indent-spaces\ 4\ --show-body-only\ 1\ --show-errors\ 0\ --tidy-mark\ 0\ --wrap\ 0

" Toggle display of invisible / non-printable characters
nmap <leader>l :set list!<CR>

" Tidy visually selected lines (indenting, quiet mode, no logging)
" http://vim.wikia.com/wiki/Cleanup_your_HTML
vmap <leader>t :!tidy -q -i --show-errors 0<CR>

" Easy access to our .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" Search and replace word at cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/

    " TagBar
    """""""""""""""""""""""""""""""
    nmap <F8> :TagbarToggle<CR>

    " Unimpaired
    """""""""""""""""""""""""""""""
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e
    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv


" => Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source .vimrc when it's written to disk
" http://stackoverflow.com/a/2400289
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
    " autocmd bufwritepost .vimrc call Pl#Load()
augroup END

" enable GLSL highlighting
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.vshader,*.fshader setf glsl
