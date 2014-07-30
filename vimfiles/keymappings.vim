" Save as root
cmap wR<CR> :w !sudo tee % <CR>




" Remap code commenting
map // <Leader>cc
map ?? <Leader>cu




" Toggle Wrap
nnoremap <leader>W :set wrap!<cr>




" Folding Toggle 
nnoremap <Leader>a za
nnoremap <Leader>A zA




" Select entire buffer
nnoremap vaa ggvGg_
nnoremap Vaa ggVG





" Will turn a multi-line paragraph into a single line
nnoremap Q gqip
vnoremap Q gq




" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w




" HTML tag closing
inoremap <C-_> <space><bs><esc>:call InsertCloseTag()<cr>a





" Moves the character under the cursor to the end of the line.
nnoremap zl :let @z=@"<cr>x$p:let @"=@z<cr>




" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

