" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker foldopen+=search:
"
"   Robin Pyon's VIM config
"   robinpyon.net / @robinpyon
"
"   Heavily based off Steve Francia's spf13 bundle
"   spf13.com
"
" }

" Environment {
    
    " Basics {
        set nocompatible            " disable vi compatibility, must be a first line
        set background=dark         " assume a dark background
    " }

    " Setup Bundle Support {
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
    " }
    
" }

" Bundles {

    " Deps
    Bundle 'gmarik/vundle'              
    Bundle 'MarcWeber/vim-addon-mw-utils'
    Bundle 'tomtom/tlib_vim'

    " General 
    " Bundle 'benmills/vimux'
    Bundle 'kien/ctrlp.vim'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'Lokaltog/vim-powerline'
    " Bundle 'milkypostman/vim-togglelist'
    Bundle 'scrooloose/nerdtree'
    Bundle 'skwp/vim-colors-solarized'
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'vim-scripts/IndexedSearch'
    " Bundle 'vim-scripts/Toggle'

    " General Programming
    Bundle 'ervandew/supertab'
    " Bundle 'majutsushi/tagbar'
    Bundle 'jiangmiao/auto-pairs'
    Bundle 'scrooloose/syntastic'
    Bundle 'Shougo/neocomplcache'
    Bundle 'SirVer/ultisnips'
    Bundle 'tpope/vim-fugitive'
    " Bundle 'tpope/vim-ragtag'
    Bundle 'tomtom/tcomment_vim'

    " C based (C / C++ / Objective-C / Objective-C++)
    " Bundle 'Rip-Rip/clang_complete'
    " Bundle 'vim-scripts/a.vim'

    " HTML / CSS
    Bundle 'mattn/zencoding-vim'
    " Bundle 'tpope/vim-haml'

    " Jade 
    " Syntax higlighting + indentation
    Bundle 'digitaltoad/vim-jade'   

    " JavaScript
    Bundle 'walm/jshint.vim'
    Bundle 'vim-scripts/vim-json-bundle'
    " Bundle 'taxilian/vim-web-indent'

    " Ruby
    " Bundle 'pgr0ss/vimux-ruby-test'
    " Bundle 'tpope/vim-bundler'
    " NOTE: endwise conflics with vim-smartinput
    " Bundle 'tpope/vim-endwise'
    " Bundle 'tpope/vim-rails'

    " Stylus syntax highlighting
    Bundle 'wavded/vim-stylus'

    " Misc
    Bundle 'tpope/vim-markdown'

" }

" General {
    set background=dark                 " assume a dark background
    filetype plugin indent on           " automatically detect file types
    syntax on                           " Enable syntax highlighting
    set synmaxcol=120                   " Limit highlighting to to 120 cols so vim doesn't choke on minified files
    set encoding=utf-8
    set history=1000
    set mouse=a                         " enable full mouse support
    set noerrorbells                    " disable error bells
    set vb t_vb=                        " Disable visual / audio bells for non error events (e.g. pressing ESC, edge scrolling)

    " Source .vimrc when saved and reload powerline
    " au BufWritePost .vimrc source ~/.vimrc
    au BufWritePost .vimrc call Pl#Load()

    " Could use * rather than *.*, but I prefer to leave .files unsaved (This conflicts with rails.vim))
    " au BufWinLeave *.* silent! mkview       " Make vim save view (state) (folds, cursor, etc)
    " au BufWinEnter *.* silent! loadview     " Make vim load view (state) (folds, cursor, etc))

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

" }

" Vim UI {
    set backspace=indent,eol,start      " ensure backspace works like in other programs
    set clipboard=unnamed               " (MacVim) use system clipboard
    set colorcolumn=85
    set cpoptions+=$
    set cursorline
    set diffopt=vertical                " default vimdiff to vertical split
    set foldopen+=search,undo           " open folds on specific commands
    set formatoptions+=1
    set hlsearch                        " highlight search items
    set ignorecase                      " case insensitive search if search is all lowercase
    set incsearch                       " show 'best match so far' as search strings are typed
    set laststatus=2                    " always show statusbar
    set linebreak                       " only wrap at word boundaries
    set listchars=tab:▸\ ,eol:¬         " set custom characters for non printable elements
    " set number                        " show line numbers
    set nolist                          " hide hidden characters
    set smartcase                       " case sensitive search if search contains uppercase characters
    set splitright                      " new horizontal splits on the right
    set splitbelow                      " new vertical splits on the bottom
    set textwidth=0
    set wildmenu
    set wildignore=*~,.git,tmp,*.log
    set wildmode=list:longest,full

    " Change cursor type when entering and exiting insert mode
    if has('cursorshape')
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
" }

" Formatting {
    set autoindent                      " keep indentation from previous line
    set expandtab                       " use spaces in place of tab characters
    set shiftwidth=4                    " number of spaces to use for autoindenting
    set softtabstop=4                   " number of spaces to use when pressing <tab> and pressing backspace
    set tabstop=4                       " the width of a tab in spaces
    set smartindent                     " automatically inserts indentation in some cases
    set wrap                            " wrap visually, rather than changing text in the buffer

" }

" Filetype specific {

    " GLSL
    au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.vshader,*.fshader setf glsl
    
    " Jade, Stylus
    au BufRead,BufNewFile *.jade,*.styl setlocal shiftwidth=2 tabstop=2 softtabstop=2 

    " JavaScript
    au BufRead,BufNewFile *.json,*.ejs setf javascript 
    au FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 

    " Ruby
    au BufRead,BufNewFile *.rabl,*.json_builder,*.assetfile,Rakefile,Assetfile,Guardfile setf ruby
    au FileType ruby,eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 

    " .htaccess
    au BufNewFile,BufRead .htaccess setf apache 

    " On save: remove trailing whitespaces and ^M chars 
    au FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))   
    
" }

" Key mappings {

    let mapleader = ","                 " change the mapleader from \ to ,

    nnoremap ; :

    " Easy navigation between windows
    nnoremap <C-h> <C-w>h 
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Wrapped lines goes down/up to next row, rather than next line in file.
    nnoremap j gj
    nnoremap k gk

    " Properly interpret arrow keys when run within a tmux session
    if &term =~ '^screen'
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

    " Stupid shift key fixes
    " cmap W w
    " cmap WQ wq
    " cmap wQ wq
    " cmap Q q
    " cmap Tabe tabe

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    " Use tidy when using the = operator
    " http://vim.wikia.com/wiki/Cleanup_your_HTML#Using_tidy_for_html_files
    " TODO: what is setlocal?
    " :setlocal equalprg=tidyp\ -indent\ -quiet\ --indent-spaces\ 4\ --show-body-only\ 1\ --show-errors\ 0\ --tidy-mark\ 0\ --wrap\ 0

    " Easy access to commonly accessed rc files
    nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
    nnoremap <silent> <leader>eb :e ~/.bashrc<CR>

    " Close buffer but don't close split
    nmap <leader>d :b#<bar>bd#<CR>

    " Toggle display of invisible / non-printable characters
    nnoremap <leader>l :set list!<CR>

    " Preserve indentation while pasting text from the OS X clipboard
    noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

    " Search and replace word at cursor
    nnoremap <leader>s :%s/\<<C-r><C-w>\>/

    " Tidy visually selected lines (indenting, quiet mode, no logging)
    " http://vim.wikia.com/wiki/Cleanup_your_HTML
    vnoremap <leader>t :!tidy -q -i --show-errors 0<CR>

    " Yank text to the OS X clipboard
    noremap <leader>y "*y
    noremap <leader>yy "*Y

    " Clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

    " Enable shift-tab to outdent in normal and insert mode
    nmap <S-Tab> <<
    imap <S-Tab> <Esc><<i

    " Allow in/exdenting with tab and single angled quotes, while retaining visual selection
    vnoremap > >gv
    vnoremap < <gv
    vnoremap <Tab> >gv
    vnoremap <S-Tab> <gv


" }

" GUI settings {
   if has('gui_running')
        set guioptions-=T           " remove the toolbar
        set lines=40                " 40 lines of text instead of 24,
        set linespace=2
        set guifont=Inconsolata\ for\ Powerline:h16
    else
        "set term=builtin_ansi       " Make arrow and other keys work
    endif
" }

command Vhosts e /private/etc/apache2/extra/httpd-vhosts.conf

" TODO: use interactive shell when trying to run Plask.app
" set shell=/bin/bash\ -li            " enable interactive shell
" set shortmess=atI                   " suppress 'Press ENTER or type command to continue' messages
