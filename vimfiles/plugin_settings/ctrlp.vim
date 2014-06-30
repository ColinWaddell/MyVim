"=============== CtrlP Searching
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_extensions = ['tag','dir', 'line', 'mixed']
let g:ctrlp_max_files=1000
map <c-t> :CtrlPTag<CR>
