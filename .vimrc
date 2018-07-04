" Pathogen defaults to control plugins for later
execute pathogen#infect()
syntax on
filetype plugin indent on

" General vim presets
set relativenumber
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
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

" Syntastic settings for default work (recommended settings)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Attempting to stop tmux from using different coloring scheme upon launch
set background=dark
set t_Co=256 
