" Pathogen defaults to control plugins for later
execute pathogen#infect()
syntax on
filetype plugin indent on

" General vim presets
set relativenumber
set number

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent

colorscheme apprentice 

" Controls Cursor shape depenedent on mode of editing
let g:TerminusInsertCursorShape=1
let g:TerminusReplaceCursorShape=2

set laststatus=2
set noshowmode

" Controls bottomw bar color scheme
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

" Control for nerd tree to be opened by CTRL-N
map <C-n> :NERDTreeToggle<CR>

" Control for TagBar to be opened by F8
nmap <C-l> :TagbarToggle<CR>

" Vim-javascript controls
let g:javascript_plugin_jsdoc = 1

"Vim-JSX (REACT) controls
let g:jsx_ext_required = 1

" Attempting to stop tmux from using different coloring scheme upon launch
set background=dark
set t_Co=256 
