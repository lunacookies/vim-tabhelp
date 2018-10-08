if exists("g:loaded_tabhelp")
  finish
endif
let g:loaded_tabhelp = 1

augroup tabhelp
  autocmd!
augroup END

autocmd tabhelp BufEnter *.txt call tabhelp#execute()
