" Time in milliseconds to wait for a mapped sequence to complete,
" see https://unix.stackexchange.com/q/36882/221410 for more info
set timeoutlen=500

set updatetime=500  " For CursorHold events


" Clipboard settings, always use clipboard for all delete, yank, change, put
" operation, see https://stackoverflow.com/q/30691466/6064933
if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

syntax on

" Set up cursor color and shape in various mode, ref:
" https://github.com/neovim/neovim/wiki/FAQ#how-to-change-cursor-color-in-the-terminal
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20
set noshowmatch
set noerrorbells           " no error bell

" General tab settings
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

set smartindent            " auto indentation
set nu        		   " line number
set relativenumber         " relative line number
set nowrap                 " do not wrap line
set smartcase              " search case sensitive

set noswapfile
set nowritebackup
set nobackup               " do not back up file automatically
set undodir=~/.vim/undodir     " set back up dir directory
set undofile           " require user to input where to save back up file

set hlsearch  " highlight search and search while typing
set incsearch          " start to highlight search matches as you type
set cpoptions+=x  " stay at seach item when <esc>

" Enable true color support. Do not set this option if your terminal does not
" support true colors! For a comprehensive list of terminals supporting true
" colors, see https://github.com/termstandard/colors and https://gist.github.com/XVilka/8346728.
set termguicolors
" if (has("termguicolors"))
"   set termguicolors
" endif

" Give more space for displaying messages.
set cmdheight=2

set colorcolumn=80


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Font
set encoding=utf8
"set guifont=Ubuntu\ Mono\ Nerd\ Font\ Complete\ Mono:h11
set guifont=Hack:h11
