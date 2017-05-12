call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

let g:unite_source_grep_max_candidates = 200

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep', 'ignore_pattern',
  \ join([
  \ '\.git/',
  \ 'bower_components/',
  \ 'node_modules/',
  \ ], '\|'))

" Use ag over grep
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
  \ '-i --vimgrep --hidden --ignore ' .
  \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_rec_async_command =
  \ ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif

let g:default_context = {
  \ 'winheight' : 15,
  \ 'update_time' : 200,
  \ 'prompt' : '>>> ',
  \ 'enable_start_insert' : 0,
  \ 'enable_short_source_names' : 0,
  \ 'marked_icon' : '✓',
  \ 'ignorecase' : 1,
  \ 'smartcase' : 1,
\ }

call unite#custom#profile('default', 'context', default_context)

function! s:unite_settings()
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction
