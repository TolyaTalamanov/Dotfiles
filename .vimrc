filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'
Bundle 'matze/vim-move'
Bundle 'Tabmerge'
Bundle 'dyng/ctrlsf.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'morhetz/gruvbox'
Bundle 'sickill/vim-monokai'
Bundle 'jiangmiao/auto-pairs'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-surround'
Bundle 'easymotion/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdcommenter'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-airline/vim-airline'

filetype plugin indent on

"Mapping 
:let mapleader = ","

nnoremap <Leader>B :BundleInstall<CR>

"switch splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <Leader>C <C-W>c
"Enter line
nnoremap <S-Enter> O<Esc> 
nnoremap <CR> o<Esc> 

set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

map <Leader> <Plug>(easymotion-prefix)
imap <Tab>   <Plug>snipMateTrigger

" camelCase => camel_case
"
vnoremap <silent> <Leader>c :s/\v\C(([a-z]+)([A-Z]))/\2_\l\3/g<CR>"

"ctrlP mapping
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_working_path_mode = 'ra'


" Open file under cursor in a new vertical split
"
nnoremap gf :<C-u>vertical wincmd f<CR>


" Open the .vimrc in a new tab
nnoremap <leader>v :<C-u>tabedit $MYVIMRC<CR>
:cabbrev e NERDTreeClose<CR>:e!

"find
nnoremap <silent> <Leader>l :<C-u>nohlsearch<CR><C-l>
nnoremap <F2> :set invpaste paste?<CR>
"NeardTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <Leader><Leader> :<C-u>NERDTreeToggle<CR>
"Base 
set tabstop=4
set softtabstop=4
set smarttab
set smartindent
set expandtab
set shiftwidth=4
set wrap
set linebreak
set nolist
set noswapfile

let &path.="/home/talamanov/work-place/g-api-dev/g-api/include,/home/talamanov/work-place/g-api-dev/opencv/include"
set makeprg=make\ -C\ ./build\ -j4 
nnoremap <Leader>b :make!<CR>


set nu
set hlsearch
set pastetoggle=<F2>
set showmode
"Interface
set encoding=utf-8
set fileformat=unix
" Status line
syntax enable
colorscheme monokai

"YouCompleteMe

set comments=sl:/*,mb:\ *,elx:\ */

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1

noremap <Leader>a :Ack -r <cword> /home/talamanov/work-place/<cr>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>wq :wq<CR>
nnoremap <Leader>w :w<CR>
noremap <Leader>q :q<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gr :Gread<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gl :Git log<CR>

nnoremap K H
nnoremap J L
nnoremap H gT
nnoremap L gt
nnoremap <Leader>F :CtrlP<CR>
nnoremap <Leader>ff :CtrlP<CR>
nmap <Leader>fs <Plug>(easymotion-s)
nmap <Leader>fl <Plug>(easymotion-sl)
nnoremap <Leader>fc :NERDTreeFind<CR>
nnoremap <Leader>fp :CtrlSF 
vmap <Leader>fp <Plug>CtrlSFVwordExec
vmap <Leader>fP <Plug>CtrlSFVwordPath
nmap <Leader>fn <Plug>CtrlSFCwordExec
nmap <Leader>fnp <Plug>CtrlSFPwordPath
set rnu
set laststatus=2
set ignorecase

nnoremap <Leader>tmv :Tabmerge 1 left<CR>
nnoremap <Leader>tmh :Tabmerge<CR>
nnoremap <Leader>tn <C-W>T
nnoremap / /\v
vnoremap / /\v

set noswapfile 

nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+
nmap <C-Left> <C-W>><C-W>>
nmap <C-Right> <C-W><<C-W><

nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap * *N
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>
nnoremap p ]p
nnoremap P [p
nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
nnoremap <Leader>p "+p

