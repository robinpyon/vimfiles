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
    " Bundle 'ap/vim-css-color'
    Bundle 'benmills/vimux'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'kien/ctrlp.vim'
    Bundle 'garbas/vim-snipmate'
    Bundle 'majutsushi/tagbar'
    Bundle 'mattn/zencoding-vim'
    Bundle 'MarcWeber/vim-addon-mw-utils'
    Bundle 'pgr0ss/vimux-ruby-test'
    Bundle 'Raimondi/delimitMate'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'Shougo/neocomplcache'
    Bundle 'tomtom/tlib_vim'
    Bundle 'tomtom/tcomment_vim'
    Bundle 'tpope/vim-bundler'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-markdown'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-ragtag'
    Bundle 'tpope/vim-rails'
    Bundle 'vim-scripts/JavaScript-Indent'
    Bundle 'vim-scripts/IndexedSearch'
    Bundle 'walm/jshint.vim'

filetype plugin indent on           " enable loading plugins and indents based on file type (required for Vundle)


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


" => General Options
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                    " disable vi compatibility
set encoding=utf-8
set nomodeline                      " disable modeline
set clipboard=unnamed               " (MacVim) use system clipboard
set noerrorbells                    " disable error bells
set mouse=a                         " enable full mouse support
" TODO: use interactive shell when trying to run Plask.app
" set shell=/bin/bash\ -li            " enable interactive shell
" set shortmess=atI                   " suppress 'Press ENTER or type command to continue' messages
set wildmenu
set wildignore=*~,.git,tmp,*.log
set wildmode=list:longest,full
set vb t_vb=                        " Disable visual / audio bells for non error events (e.g. pressing ESC, trying to scroll past boundaries)


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
set softtabstop=4                   " number of spaces to use when pressing <tab> and pressing backspace
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
    " if &term =~ "xterm" || &term =~ "screen"
    "     let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
    "     let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
    "     let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
    " endif
    " let g:CommandTMaxHeight=15                      " set max window height

    " Ctrl-P
    """""""""""""""""""""""""""""""
    let g:ctrlp_working_path_mode = 0               " don't manage working directory
    let g:ctrlp_match_window_reversed = 0           " list from top to bottom

    " EasyMotion
    """""""""""""""""""""""""""""""
    let g:EasyMotion_leader_key = '<Leader>' 

    " MRU
    """""""""""""""""""""""""""""""
    " nmap <C-m> :MRU<CR>

    " NERDCommenter
    """""""""""""""""""""""""""""""
    " let g:NERDSpaceDelims = 1                     " add extra space between comment delims

    " Neocomplcache
    """""""""""""""""""""""""""""""
    let g:neocomplcache_enable_at_startup = 1       " enable on startup

    " Powerline
    """""""""""""""""""""""""""""""
    let g:Powerline_symbols = 'fancy'
    " let g:Powerline_theme = 'skwp'
    " let g:Powerline_colorscheme = 'skwp'
    
    " SnipMate
    """"""""""""""""""""""""""""""j"
    let g:snippets_dir="~/.vim/snippets/"

    " Solarized
    """""""""""""""""""""""""""""""
    call togglebg#map("<F5>")                       " toggle between dark and light modes
    let g:solarized_termcolors=16                   " set to 16 as terminal emulator palette is being used
    let g:solarized_visibility="normal"             " visibility mode of hidden characters
    colorscheme solarized

    " TagBar
    """""""""""""""""""""""""""""""
    let g:tagbar_type_javascript = {
        \ 'ctagsbin' : '/usr/local/bin/jsctags'
    \ }

    " Plug-in: Zencoding.vim
    """""""""""""""""""""""""""""""
    let g:user_zen_leader_key = '<c-e>'

    " Vimux
    """""""""""""""""""""""""""""""
    let VimuxUseNearestPane = 1

    
" => Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","                 " change the mapleader from \ to ,

" Easy navigation between windows
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Properly interpret arrow keys when run within a tmux session
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Use tidy when using the = operator
" http://vim.wikia.com/wiki/Cleanup_your_HTML#Using_tidy_for_html_files
" TODO: what is setlocal?
" :setlocal equalprg=tidyp\ -indent\ -quiet\ --indent-spaces\ 4\ --show-body-only\ 1\ --show-errors\ 0\ --tidy-mark\ 0\ --wrap\ 0

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Toggle display of invisible / non-printable characters
nnoremap <leader>l :set list!<CR>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Easy access to commonly accessed rc files
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>eb :e ~/.bashrc<CR>

" Search and replace word at cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/

" Allow in/exdenting with tab and single angled quotes, while retaining visual selection
vnoremap > >gv
vnoremap < <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Tidy visually selected lines (indenting, quiet mode, no logging)
" http://vim.wikia.com/wiki/Cleanup_your_HTML
vnoremap <leader>t :!tidy -q -i --show-errors 0<CR>

    " Ctrl-P
    """""""""""""""""""""""""""""""
    nmap <C-B> :CtrlPBuffer<CR>
    nmap <C-M> :CtrlPMRU<CR>

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

    " Vimux
    """""""""""""""""""""""""""""""
    " Run the current file with rspec
    map <Leader>rb :call RunVimTmuxCommand("clear; rspec " . bufname("%"))<CR>
    " Prompt for a command to run
    map <Leader>rp :PromptVimTmuxCommand<CR>
    " Run last command executed by RunVimTmuxCommand
    map <Leader>rl :RunLastVimTmuxCommand<CR>
    " Inspect runner pane
    map <Leader>ri :InspectVimTmuxRunner<CR>
    " Close all other tmux panes in current window
    map <Leader>rx :CloseVimTmuxPanes<CR>
    " Interrupt any command running in the runner pane
    map <Leader>rs :InterruptVimTmuxRunner<CR>

    " Vimux ruby test
    """""""""""""""""""""""""""""""
    map <Leader>rf :RunRubyFocusedTest
    map <Leader>rc :RunRubyFocusedContext
    map <Leader>rt :RunAllRubyTests

" => Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source .vimrc when it's written to disk
" http://stackoverflow.com/a/2400289
augroup myvimrchooks
     au!
     autocmd bufwritepost .vimrc source ~/.vimrc
     " autocmd bufwritepost .vimrc call Pl#Load()
augroup END

" File type specific settings
" TODO: consider moving these into separate files placed in
" ~/.vim/after/ftplugin/%filetype%.vim
" http://stackoverflow.com/questions/158968/changing-vim-indentation-behavior-by-file-type
au FileType ruby,eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 

" Open NERDTree on launch
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w         " switch to main window

" => Custom highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GLSL
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.vshader,*.fshader setf glsl
" .htaccess
au BufNewFile,BufRead .htaccess setf apache 
