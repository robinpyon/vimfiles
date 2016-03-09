" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Use smart case
let g:deoplete#enable_smart_case = 1

" default # of completions is 100, that's crazy
let g:deoplete#max_list = 5

" This makes sure we use deoplete completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out
let g:deoplete#force_overwrite_completefunc = 1

" Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 3

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion
if !exists('g:deoplete#sources#omni#input_patterns')
  let g:deoplete#sources#omni#input_patterns = {}
endif
