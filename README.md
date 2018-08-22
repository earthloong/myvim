# myvim


## 编译YCM
### 如果需要对C-family的语义支持：
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.sh --clang-completer

### 如果不需要对C-family的语义支持：
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.sh

如果需要支持C#，添加 --omnisharp-complete。如果需要支持Go添加--gocode-completer

## YouCompleteMe配置

### 复制 .ycm_extra_conf.py 文件

$ cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/

### 添加 vim 配置
    注意下面的 python 解释器的路径要和编译 ycm_core 的时候使用的 python 解释器是相同的版本（2 或 3）

“ ～/.vimrc
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
