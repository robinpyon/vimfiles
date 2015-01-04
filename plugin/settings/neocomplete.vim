" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete
let g:neocomplete#enable_at_startup = 1

" Use smart case
let g:neocomplete#enable_smart_case = 1

" default # of completions is 100, that's crazy
let g:neocomplete#max_list = 5

" This makes sure we use neocomplete completefunc instead of 
" the one in rails.vim, otherwise this plugin will crap out
let g:neocomplete#force_overwrite_completefunc = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
