" ============== Audrino Make Shortcuts
autocmd FileType arduino map <buffer> <D-u> :make upload<CR>
autocmd FileType arduino map <buffer> <D-U> :ConqueTermSplit make monitor<CR>


" ============== Map emmet-vim shortcut
autocmd FileType css,php,html map <buffer> 1 <C-y>,

autocmd FileType json nnoremap <Leader>J :%!python -m json.tool<CR>
autocmd FileType json nnoremap <Leader>o za
autocmd FileType json :setlocal foldmethod=syntax

