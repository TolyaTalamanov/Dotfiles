set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'
Bundle 'sickill/vim-monokai'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'dyng/ctrlsf.vim'
Bundle 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"View
colorscheme monokai

"Mapping 
:let mapleader = ","
nnoremap <Leader>B :BundleInstall<CR>

nnoremap <Leader>fp :CtrlSF 
vmap <Leader>fp <Plug>CtrlSFVwordExec
vmap <Leader>fP <Plug>CtrlSFVwordPath
nmap <Leader>fn <Plug>CtrlSFCwordExec
nmap <Leader>fnp <Plug>CtrlSFPwordPath

"NeardTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <Leader>t :<C-u>NERDTreeToggle<CR>

nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+
nmap <C-Left> <C-W>><C-W>>
nmap <C-Right> <C-W><<C-W><

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <Leader>C <C-W>c

"Easymotion
nmap <Leader>fs <Plug>(easymotion-s)

" Fuzzy finder
nnoremap <Leader>F :CtrlP<CR>
nnoremap <Leader>ff :CtrlP<CR>

"Base 
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile

set hlsearch
nnoremap <silent> <Leader>l :<C-u>nohlsearch<CR><C-l>

nnoremap H gT
nnoremap L gt

nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

nnoremap <Leader>p "+p
nnoremap <Leader>y "+y

nnoremap <Leader>yy "+yy
autocmd VimLeave * call system("xclip -ib", getreg('+'))

set is hls
