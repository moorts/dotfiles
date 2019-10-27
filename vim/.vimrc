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
call plug#end()

" Vundle for YouCompleteMe
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required

filetype plugin indent on    " required

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
set expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=2 tabstop=2 expandtab

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
