
" Custom mapping <leader> (see `:h mapleader` for more info)
let g:mapleader = ','

" show WhichKey
:noremap <leader><leader> <Cmd>WhichKey <CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Buffer mappings
:noremap <leader>bn <Cmd>bnext <CR>
:noremap <leader>bN <Cmd>bNext <CR>
