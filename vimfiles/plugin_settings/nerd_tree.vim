"=============== NERD Tree

" Give a shortcut key to NERD Tree
map ` :NERDTreeToggle<CR><Space>

" Remap pane browser
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" show NERDTree on startup
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
