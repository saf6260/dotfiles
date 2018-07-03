execute pathogen#infect()
syntax on
filetype plugin indent on


set relativenumber
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent

colorscheme apprentice 

let g:TerminusInsertCursorShape=1
let g:TerminusReplaceCursorShape=2

set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

map <C-n> :NERDTreeToggle<CR>
