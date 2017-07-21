" Redefine :Ag command
" autocmd VimEnter * command! -nargs=* Ag
"       \ call fzf#vim#ag(<q-args>, '--color-path "33;1"', fzf#vim#default_layout)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 '--color-path "33;1"',
  \                 <bang>0 ? fzf#vim#with_preview('right:50%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'up': '~20%' }

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_OPTS = '--reverse'
