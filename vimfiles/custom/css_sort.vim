augroup ft_css
    au!

    au BufNewFile,BufRead *.less setlocal filetype=less

    au Filetype less,css setlocal foldmethod=marker
    au Filetype less,css setlocal foldmarker={,}
    au Filetype less,css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype less,css setlocal iskeyword+=-

    " Use <leader>S to sort properties.  Turns this:
    "
    "     p {
    "         width: 200px;
    "         height: 100px;
    "         background: red;
    "
    "         ...
    "     }
    "
    " into this:

    "     p {
    "         background: red;
    "         height: 100px;
    "         width: 200px;
    "
    "         ...
    "     }
    au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END

