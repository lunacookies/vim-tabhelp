function! tabhelp#closehelp() abort
  execute 'bdelete!'
  execute 'tabclose'
endfunction

function! tabhelp#execute() abort
  if &buftype == 'help'
    wincmd T
    nnoremap <buffer> q :silent! call tabhelp#closehelp()<CR>
  endif
endfunction
