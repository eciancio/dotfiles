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
Plugin 'tpope/vim-commentary'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'SirVer/ultisnips'

"" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
" set t_Co=256
let g:solarized_termcolors=256
set relativenumber
set rnu
set autowrite
colorscheme badwolf

syntax enable
set background=dark

set runtimepath^=~/.vim/bundle/ctrlp.vim
syntax enable
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
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" vim-go
:let mapleader = ","
au FileType go nmap <Leader>d <Plug>(go-def-tab)

let g:go_gocode_bin="/usr/bin/gocode"
let g:go_goimports_bin="/usr/bin/goimports"
let g:go_godef_bin="/usr/bin/godef"
let g:go_oracle_bin="/usr/bin/oracle"
let g:go_golint_bin="/usr/bin/golint"
let g:go_errcheck_bin="/usr/bin/errcheck"
let g:go_gotags_bin="/usr/bin/gotags"
let g:go_fmt_command = "goimports"

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_gocode_autobuild=0
let g:go_auto_type_info = 0
let g:syntastic_python_checkers = ['flake8', 'pylint', 'python']
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
let g:ycm_global_ycm_extra_conf="/home/eciancio/.vim/bundle/youcompleteme/.ycm_extra_conf.py"
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:go_version_warning = 0

let g:UltiSnipsExpandTrigger="<c-j>"
