call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'bignimbus/pop-punk.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'bling/vim-bufferline'
Plug 'voldikss/vim-floaterm'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'liuchengxu/vim-which-key'
call plug#end()

set termguicolors
let ayucolor="light"

syntax on
colorscheme pop-punk

set relativenumber
set number

nnoremap <SPACE> <Nop>
let mapleader = " "

"Whichkey
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

" Keyboard shortcuts
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>fp :FloatermNew --name=psh powershell.exe<CR>
nnoremap <leader>fu :FloatermNew --name=ub ubuntu1804.exe run<CR>
nnoremap <leader>fn :FloatermNew<CR>
nnoremap <leader>fl :FloatermNext<CR>
nnoremap <leader>fh :FloatermPrev<CR>
nnoremap <leader>ft :FloatermToggle<CR>
nnoremap <leader>fk :FloatermKill<CR>

nnoremap <C-s> :source C:\Users\morit\AppData\Local\nvim\init.vim<CR>

" Terminal mode shortcuts
tnoremap <Esc> <C-\><C-n>

" Window navigation
"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>


" Buffer navigation

nnoremap <leader>b1 :b1<CR>
nnoremap <leader>b2 :b2<CR>
nnoremap <leader>b3 :b3<CR>
nnoremap <leader>b4 :b4<CR>
nnoremap <leader>b5 :b5<CR>
nnoremap <leader>b6 :b6<CR>
nnoremap <leader>b7 :b7<CR>
nnoremap <leader>b8 :b8<CR>
nnoremap <leader>b9 :b9<CR>

let g:bufferline_echo = 0
autocmd VimEnter *
\ let &statusline='%{bufferline#refresh_status()}'
  \ .bufferline#get_status_string()


" Set tabsize

set expandtab shiftwidth=4 tabstop=4

set autoindent

" IndentLine {{
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" Use system clipboard
set clipboard=unnamedplus

" Replace all
nnoremap S :%s//g<Left><Left>

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

" Add custom menus
let s:menus = {}

let s:menus.files = {
    \ 'description': 'Edit your import zsh configuration'
    \ }
let s:menus.files.file_candidates = [
    \ ['init.vim', 'C:\Users\morit\AppData\Local\nvim\init.vim'],
    \ ['zshenv', '~/.zshenv'],
    \ ]

let s:menus.compile = {
    \ 'description' : 'Compilation commands for different languages' 
    \}

let s:menus.compile.command_candidates = [
    \ ['Python', '!py %'],
    \ ['Rust', '!cargo run'],
    \ ['Java', '!java %'],
    \ ['C++', '!g++ % && .\a.exe'],
    \]

let s:menus.my_commands = {
    \ 'description': 'Example commands'
    \ }
let s:menus.my_commands.command_candidates = [
    \ ['Split the window', 'vnew'],
    \ ]

call denite#custom#var('menu', 'menus', s:menus)

" Denite shortcuts
nnoremap <leader>bc :Denite -split=floating -prompt=$ buffer<CR>
nnoremap <leader>df :Denite -split=floating -prompt=$ file/rec<CR>
nnoremap <leader>dm :Denite -split=floating -prompt=$ menu<CR>

nnoremap <leader>cp :!py %<CR>
nnoremap <leader>cr :!cargo run<CR>
nnoremap <leader>cj :!java %<CR>
nnoremap <leader>cc :!g++ % && .\a.exe<CR>

" Which key config
let g:which_key_map = {}

let g:which_key_map['b'] = {
    \ 'name' : '+buffer' ,
    \ 'n' : ['bnext', 'next-buffer'] ,
    \ 'p' : ['bprevious', 'previous-buffer'] ,
    \ 'l' : ['blast', 'last-buffer'] ,
    \ 'd' : ['bd', 'delete-buffer'] ,
    \ 'c' : 'choose-buffer',
    \ '1' : 'buffer-1',
    \ '2' : 'buffer-2',
    \ '3' : 'buffer-3',
    \ '4' : 'buffer-4',
    \ '5' : 'buffer-5',
    \ '6' : 'buffer-6',
    \ '7' : 'buffer-7',
    \ '8' : 'buffer-8',
    \ '9' : 'buffer-9',
    \}

let g:which_key_map['d'] = {
    \ 'name' : '+denite',
    \ 'f' : 'browse-files',
    \ 'm' : 'open-menu',
    \}

let g:which_key_map['c'] = {
    \ 'name' : '+compile',
    \ 'p' : 'python',
    \ 'r' : 'rust',
    \ 'j' : 'java',
    \ 'c' : 'c++',
    \}

let g:which_key_map['f'] = {
    \ 'name' : '+floaterm',
    \ 'n' : 'floaterm-new',
    \ 'l' : 'floaterm-next',
    \ 'h' : 'floaterm-prev',
    \ 't' : 'floaterm-toggle',
    \ 'k' : 'floaterm-kill',
    \ 'p' : 'floaterm-psh',
    \ 'u' : 'floaterm-wsl',
    \}
