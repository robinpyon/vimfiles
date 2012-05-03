" Fold all first level functions on open
" http://amix.dk/blog/post/19132
" function! JavaScriptFold() 
    " setl foldmethod=syntax
    " setl foldlevelstart=1
    " syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    " function! FoldText()
        " return substitute(getline(v:foldstart), '{.*', '{...}', ')
    " endfunction
    " setl foldtext=FoldText()
" endfunction

" au FileType javascript call JavaScriptFold()
" au FileType javascript setl fen'})

" Silently run current file in Plask and redraw vim screen
"map <F4> :silent execute "!plask % >/dev/null &" \| redraw!<CR>

" Silently run current file in Plask and redraw vim screen.
" Errors are output to shell in the background
"map <F4> :silent execute "!plask % &" \| redraw!<CR>
"map <F4> :execute "!plask %" \| redraw!<CR>

map <F3> :silent execute "!open_plask app.js >/dev/null &" \| redraw!<CR>
map <F4> :silent execute "!open_plask % >/dev/null &" \| redraw!<CR>
