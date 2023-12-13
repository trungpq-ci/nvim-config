" This is my personal Nvim configuration
" Template: https://github.com/jdhao/nvim-config/
" Author: Trung Phung

let s:core_conf_files = [
      \ 'globals.vim',
      \ 'options.vim',
      \ 'mappings.vim',
      \ 'plugins.vim',
      \ 'themes.vim'
      \ ]

for s:fname in s:core_conf_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor
