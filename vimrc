set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'leafgarland/typescript-vim'


"" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set runtimepath^=~/.vim/bundle/ctrlp.vim
syntax enable 
colorscheme badwolf
filetype indent plugin on 
set expandtab
set softtabstop=4
set shiftwidth=4 
set tabstop=4 
set autoindent
set smartindent
set smarttab
set expandtab
set background=dark 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set backspace=indent,eol,start
set mouse=nicr
map <F8> :tabn<CR>
map <F7> :tabnew<CR>
silent! nmap <F6> :SyntasticToggleMode<CR>
silent! nmap <F5> :SyntasticCheck<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_check_header = 1
let g:airline#extensions#tabline#enabled = 1
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
