" Highlight all occurances of word under cursor
:autocmd CursorMoved * exe printf('match LineNr /\V\<%s\>/', escape(expand('<cword>'), '/\'))

