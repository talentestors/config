"语法高亮
syntax on
"显示行号
set number relativenumber
"显示光标所在位置的行号和列号
set ruler
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set backspace=2
set co=5
"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"set laststatus=2   "命令行为两行
"set fenc=utf-8     "文件编码
"set mouse=a        "启用鼠标
set ignorecase     "忽略大小写
set cursorline     "突出显示当前行
"set cursorcolumn   "突出显示当前列
set showmode               " 显示当前模式
set fdm=marker
set clipboard^=unnamed,unnamedplus	" 使 IdeaVim 的剪切板与系统剪切板互通
" 映射d键到系统剪切板
nnoremap d "+d
vnoremap d "+d
" 映射x键到黑洞寄存器（直接删除不保存）
nnoremap x "_x
vnoremap x "_x


" --- action ---
"jk退出insert模式
inoremap jk <ESC>

let mapleader = ' '  "设置 leader 键为空格
