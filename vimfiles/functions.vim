" Highlight all occurances of word under cursor
:autocmd CursorMoved * exe printf('match LineNr /\V\<%s\>/', escape(expand('<cword>'), '/\'))




" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


" Fix new lines in Windows when they all end in ^M
:command FixWindowsLines :e ++ff=dos
