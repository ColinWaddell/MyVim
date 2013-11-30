call pathogen#infect() 

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





"=============== Vim Fixes

" Fix leader key
let mapleader = '\'
filetype plugin on
set autochdir

" Save as root
cmap wR<CR> :w !sudo tee % <CR>





"=============== Code Helpers
" map emmet-vim
map 1 <C-y>,

" Remap code commenting
map // \cc
map ?? \cu





"=============== Look and feel
colorscheme desert
set autoindent
set cindent
set expandtab
set shiftwidth=2
set softtabstop=2
set ai
set number
set colorcolumn=80
set colorcolumn=120





"=============== Spell-checker
:set spell
:set spellsuggest=best,10
map zz z=





"=============== Indentation
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"





"=============== Syntax Checking
let g:syntastic_mode_map = { 'mode': 'active' }
map l :lnext<CR>
map L :lprev<CR>
map E :Errors<CR>




"=============== CtrlP Searching
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_extensions = ['tag','dir', 'line', 'mixed']
let g:ctrlp_max_files=1000
map <c-t> :CtrlPTag<CR>



"=============== Powerline
set guifont=Droid_Sans_Mono_for_Powerline:h11
let g:airline_powerline_fonts = 1
:AirlineTheme powerlineish