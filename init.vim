call plug#begin('~/.vim/plugged')

" Programming
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-clang'

" QOL
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/tagbar'
Plug 'beauwilliams/focus.nvim'

" Colorschemes
Plug 'phanviet/vim-monokai-pro'
Plug 'real-99/onedarker.nvim'

call plug#end()

lua require("focus").setup()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-12/lib/libclang.so'
call deoplete#custom#option('num_processes', 4)

" Config options
set noshowmode
set number
set encoding=UTF-8
syntax enable

" Colors
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme onedarker
let g:lightline = { 'colorscheme': 'one' }

let mapleader=' '

:FocusEnable

" Toggle File Tree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" Comment out line(s)
vmap <leader><leader> <plug>NERDCommenterToggle
nmap <leader><leader> <plug>NERDCommenterToggle

" Switch between tabs
nnoremap H gT
nnoremap L gt

" Move between splits
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l
:inoremap <C-h> <C-\><C-N><C-w>h
:inoremap <C-j> <C-\><C-N><C-w>j
:inoremap <C-k> <C-\><C-N><C-w>k
:inoremap <C-l> <C-\><C-N><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" Remap tagbar openAutoClose
nnoremap <silent> <leader>Y :TagbarOpenAutoClose<CR>

" Remap tagbar openAutoClose
nnoremap <silent> <leader>y :TagbarToggle<CR>

nnoremap <silent> <leader>h :FocusSplitLeft<CR>
nnoremap <silent> <leader>j :FocusSplitDown<CR>
nnoremap <silent> <leader>k :FocusSplitUp<CR>
nnoremap <silent> <leader>l :FocusSplitRight<CR>

" Change text indentation
vmap <Tab> >gv
vmap <S-Tab> <gv
