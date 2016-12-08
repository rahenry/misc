set nocompatible " be iMproved, required
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'KevinGoodsell/vim-csexact'
Plugin 'CSApprox'
Plugin 'JuliaLang/julia-vim'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end() " required
filetype plugin indent on " required

set shiftwidth=2
set linebreak
set noswapfile
set nobackup
set formatoptions=1
set lbr
set wrap
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar

"map j h
"map k gj
"map l gk
"map ; <Right>

set hlsearch
set cindent
set pastetoggle=<F2>
syntax on
set background=dark
colorscheme gruvbox

set number
set mouse=a

map <C-K> <C-W>w<C-W>
map <C-L> <C-W>w<C-W>
map <F8> : w<CR> : !cd .. && make && ./rl1 && cd src <CR>

"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" Add this to your vimrc to get a minimalist autocomplete pop
" Or use as a plugin : https://github.com/maxboisvert/vim-simple-complete

" Minimalist-TabComplete-Plugin
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-P>"
    else
        return "\<Tab>"
    endif
endfun

