set nocompatible
filetype off

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))

          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs

              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug '~/.fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" Vundle for YouCompleteMe
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required

filetype plugin indent on    " required

" Autocompletion settings:
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
" Leader key
let mapleader = ","

" Keyboard shortcuts
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>t :call CurtineIncSw()<CR>
nnoremap <space> @q

" ALE stuff
let g:ale_linters = {
\   'c': ['clang'],
\   'c++': ['clang'],
\   'python': ['autopep8'],
\}

let g:ale_linters_explicit = 1

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" Buffer navigation
nnoremap <leader>d :bnext<CR>
nnoremap <leader>x :bdelete<CR>

" Building and/or executing code (Single file)
nnoremap <leader>r :call Run()<CR>
nnoremap <leader>d :call BuildDebugMode()<CR>

" FZF Bindings
nnoremap <leader>f :FZF<CR>

" Color scheme
syntax on
color dracula

" Linenumbers
set number
set relativenumber

" Airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1


" Set tabsize
set expandtab shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=2 tabstop=2 expandtab

" Assembler (nasm)
autocmd FileType asm set ft=nasm

" I use python, c and c++, so thats the two kinds of files i wanna be running
" from within vim
function Run()
let extension = expand('%:e')
echom extension
if extension == "py"
  :!python3 %
elseif extension == "c"
  :!gcc -Wall % && ./a.out
elseif extension == "cpp"
  :!g++ -Wall % && ./a.out
endif
endfunction

function BuildDebugMode()
let extension = expand('%:e')
echom extension
if extension == "c"
  :!gcc -Wall -c % 
elseif extension == "cpp"
  :!g++ -Wall -c %
endif
endfunction

set autoindent
