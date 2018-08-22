set encoding=utf-8	"使用utf-8编码
set number
set showcmd
"set clipboard=unnamed,unnamedplus	"可以从vim复制到剪贴板中
set mouse=a			"可以在buffer的任何地方使用鼠标
set cursorline		"显示当前行
set hlsearch		"显示高亮搜索
"set incsearch
set history=40		"默认指令记录是20
set ruler			"显示行号和列号
set pastetoggle=F3	"F3快捷键于paste模式与否之间转化，防止自动缩进
"set helplang=cn	"设置为中文帮助文档，需下载并配置之后生效

"===============文本格式排版====================
set tabstop=4
set shiftwidth=4	"设置自动对齐的缩进级别
set autoindent		"配合下面一条命令根据不同语言类型进行不同的缩进操作
filetype plugin indent on
"set cindent		"以c语言风格自动缩进
"set smartindent	"自动识别以#开头的注释，不进行换行
"===========================选择solarized的模式========================== 
syntax enable  
syntax on 
"solarzed的深色模式  
"set background=dark 
"solarized的浅色模式 
"set background=light 
"colorscheme solarized        "开启背景颜色模式 

"===========================选择molokai的模式============================ 
"let g:rehash256 = 1 
let g:molokai_original = 1    "相较于上一个模式，个人比较喜欢此种模式 
highlight NonText guibg=#060606 
highlight Folded  guibg=#0A0A0A guifg=#9090D0 
"set t_Co=256 
"set background=dark 
colorscheme  molokai

"===========================Vundle环境设置=================================
set nocompatible	"vim比vi支持更多功能，如showcmd，避免冲突和副作用
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/plugin/clang_complete.vim
"vundle管理的插件列表必须位于vundle#begin()和vundle#end()之间
call vundle#begin()

"避免PluginClean把自己卸载了
Plugin 'VundleVim/Vundle.vim'
"添加clang插件
"Plugin 'rip-rip/clang_complete'
"Plugin 'Valloric/YouCompleteMe'

let g:ycm_server_python_interpreter='/usr/bin/python'
"cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_ex
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_user_options='-std=c99 -stdlib=libc++ -std=c++11 -IIncludePath'
let g:clang_auto_select=1
let g:clang_close_preview=1
let g:clang_complete_macros=1
let g:clang_use_library=1
let g:clang_library_path="/usr/lib/llvm/"
let g:neocomplcache_enable_at_startup=1



"插件列表
" Define bundles via Github repos "
Bundle 'christoomey/vim-run-interactive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'croaky/vim-colors-github'
Bundle 'danro/rename.vim'
Bundle 'majutsushi/tagbar'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/tComment'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'godlygeek/tabular'
Bundle 'msanders/snipmate.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'
Bundle 'othree/html5.vim'
Bundle 'xsbeats/vim-blade'
Bundle 'Raimondi/delimitMate'
Bundle 'groenewege/vim-less'
"Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomasr/molokai'
Bundle 'klen/python-mode'

"插件列表结束
call vundle#end()
filetype plugin indent on
"安装插件，先找到其在github的地址，再将配置信息加入.vimrc中的call
"vundle#begin()和call vundle#end()之间，最后进入vim执行
":PluginInstall 便可自动安装
"要卸载插件，先在.vimrc中注释或删除对应插件配置信息，然后在vim中执行
":PluginClean便可卸载对应插件
"批量更新，只需执行:PluginUpdate
