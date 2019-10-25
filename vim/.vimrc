call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Leader key
let mapleader = ","

" Keyboard shortcuts
map <C-n> :NERDTreeToggle<CR>

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffer navigation
nnoremap <leader>d :bnext<CR>
nnoremap <leader>x :bdelete<CR>

" CtrlP
let g:ctrlp_map = '<C-p>'
nnoremap <C-b> :CtrlBuffer<CR>

" Color scheme
syntax on
color dracula

" Linenumbers
set number
set relativenumber

" Airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
