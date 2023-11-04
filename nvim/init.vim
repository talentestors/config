"语法高亮
syntax on

"显示行号
"set rnu
"set number
set number relativenumber

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
set mouse=a        "启用鼠标

"退出vim重置光标
:autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")

set guifont=JetBrainsMono\ Nerd\ Font:h12

"回车自动换行
nnoremap <CR> i<CR><Esc>
