
filetype plugin on
set autochdir






"=============== Spell-checker
:set spell
:set spellsuggest=best,10
map zz z=





"=============== Indentation
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"





"=============== Wild Menu
set wildmenu
set wildmode=list:longest




"=============== Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END
