"{ Global Variable
"{{ Custom variables
let g:is_win = (has('win32') || has('win64')) ? v:true : v:false
let g:is_linux = (has('unix') && !has('macunix')) ? v:true : v:false
let g:is_mac = has('macunix') ? v:true : v:false
let g:logging_level = 'debug'
"}}

"{{ Builtin variables
" Disable Python2 support
let g:loaded_python_provider = 0

" Disable perl provider
let g:loaded_perl_provider = 0

" Disable ruby provider
let g:loaded_ruby_provider = 0

" Disable node provider
let g:loaded_node_provider = 0

let g:did_install_default_menus = 1  " do not load menu

" Path to Python 3 interpreter (must be an absolute path), make startup
" faster. See https://neovim.io/doc/user/provider.html.
let g:python3_host_prog="/opt/homebrew/opt/python@3.11/bin/python3"
"if executable('python')
"   if g:is_win
"     let g:python3_host_prog=substitute(exepath('python'), '.exe$', '', 'g')
"   elseif g:is_linux || g:is_mac
"     let g:python3_host_prog="/opt/homebrew/opt/python@3.11/bin/python3"
"     "let g:python3_host_prog=exepath('python')
"   endif
"else
"  echoerr 'Python 3 executable not found! You must install Python 3 and set its PATH correctly!'
"endif

