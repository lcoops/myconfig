"help command
":help index        show keybindings
"===================================common config======================
set fileencodings=utf8,gb18030,ucs-bom,gbk,gb2312,cp936
"set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix
set encoding=utf-8
"这条命令会在vim的光标所在行上标记为一条横线还可以修饰一下条横线：
highlight CursorLine guibg=lightblue ctermbg=lightgray
"关闭错误提示音
set noeb 
set vb t_vb=
"===================================common config======================
" history文件中需要记录的行数
set history=1000

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 状态行颜色
"highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White

" 中文帮助
"set helplang=cn

"自动加载外部改动
set autoread

"显示不完整的命令
set showcmd

set lazyredraw
set hid
" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题
set display=lastline

" 设置terminel 在打开vim支持256色,也可以在baserc中设置export  TERM="xterm-256color"
"if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
set t_Co=256
"endif
set ruler
"高亮当前行
set cursorline

"色彩模式
"淡黄色
"colorscheme my_spring
"colorscheme xoria256
"colorscheme wombat256mod
"colorscheme jellybeans
"colorscheme rdark
"colorscheme tango
"colorscheme gank_nuvola
"colorscheme my_nuvola
"colorscheme morning
"colorscheme desert
"colorscheme 256-jungle
"colorscheme darkblue
"colorscheme autumn
colorscheme default
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup
set nowritebackup

" 自动切换当前目录为当前文件所在的目录
"set autochdir

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
set noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmode=list:longest
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=c
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase
set smartcase

" 搜索到文件两端时不重新搜索
set nowrapscan

"搜索逐字符高亮
set hlsearch

" 不要高亮被搜索的句子（phrases）
"set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 输入:set list命令是应该显示些啥？
" set list
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=1

" 不要闪烁
"set novisualbell
"set gcr=a:block-blinkon0

" 插入模式下光标显示竖线
"set guicursor=i:ver100-iCursor

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline= %<%F[%1*%M%*%n%R%H]%= %y %0(%{&fileformat} %{&encoding}%c:%l/%L%)

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
"set cindent

" 制表符为4统一缩进为4
set tabstop=4

" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4

" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4

" 用空格代替制表符
set expandtab
set smarttab

"tab加上序号
set guitablabel=%N.%t 

" 不要换行
"set nowrap

" 显示行号
set nu

"自动缩进
set ai 

"智能缩进
set si 

"不换行
"set nowrap    

