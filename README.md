# dotfiles
## Project
Hello! Thank you for visiting/checking out my vim configurations. This project is based completely on how my current vim package manager
is setup and locations for all of the installations, just in case you (the reader) want to install any of them
## Main Installation (Pathogen)
The packages installed all are controlled by pathogen,
a free online vim package manager found at https://github.com/tpope/vim-pathogen. To install simply preform the following command:
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
After installation, the following must be put at the top of your .vimrc file in order for vim to recognize to use pathogen
```
execute pathogen#infect()
syntax on
filetype plugin indent on
```
From there, all packages install have a formatting used specifically for pathogen to recognize it's ability and use. 

## Individual Packages:
Packages installed on this current build and their instructions can be found via the links below.
### 1.GitGutter
helps present and show git differences upon changed lines in a tracked file. Preform the following command for installation:
```
cd ~/.vim/bundle
git clone https://github.com/airblade/vim-gitgutter
```

### 2. Html5 Syntax hilighter 
Syntax highlighting for html5 
```
cd ~/.vim/bundle
git clone https://github.com/othree/html5.vim
```
### 3. Lightline
Adds a color bar to the bottom of the screen showing you which mode of vim you are in, along with other features
```
cd ~/.vim/bundle
git clone https://github.com/itchyny/lightline.vim
```
For lightline to function properly, please also put the following in your .vimrc
```
let g:lightline = {
    \ 'colorscheme': 'one',
    \ }
    
set laststatus = 2 " makes sure the correct status information shows at the bottome right of the line
set noshowmode " helps with getting rid of the default double bar at the bottom
```
Other colorschemes are available at https://vimawesome.com/plugin/lightline-vim
I use a theme called one which is a little lighter than the default installer's color
### 4. Nerd Commenter
Helps commenting look cleaner in files
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter
```
Extra control functionality can be found at https://vimawesome.com/plugin/the-nerd-commenter
### 5. Nerd Tree
Quick file access control by creating a left hand pane inside of a working file, along with many other things
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree
```
From there, the following sets the keyboard shortcut for opening the side tab:
```
map <C-n> :NERDTreeToggle<CR>
```
I also changed the arrows for directory information to the '+' '-' symbols. Here's how to do it:
```
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
```
By default, the shortcut is set to Control + N
### 6. TagBar
Scope ordering pane to help with method identification and variable information
```
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar
```
From there, add the following to open the side tab
```
nmap <C-l> :TagbarToggle<CR>
```
By default, the key is set to F8 to open however, I use control-l for easier access and memorization
### 7. Terminus
Mouse customization tool based on which mode of vim you are in
```
cd ~/.vim/bundle
git clone https://github.com/wincent/terminus
```
From there, place this in your .vimrc to see the mouse change:
```
let g:TerminusInsertCursorShape=1
let g:TerminusReplaceCursorShape=2
```
### 8. Javascript Syntax Highlighter
Javascript syntax highlighting
```
cd ~/.vim/bundle
git clone https://github.com/pangloss/vim-javascript
```
Also, add this to your .vimrc
```
let g:javascript_plugin_jsdoc = 1
```
### 9. JSX Syntax Highlighter
React syntax highlighting
```
cd ~/.vim/bundle
git clone https://github.com/mxw/vim-jsx
```
Also, add the following to your .vimrc
```
let g:jsx_ext_required = 1
```
### 10. Sensible
Sets up really helpful defaults for files, like backspace allows you to delete anything in insert mode
```
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-sensible
```
### 11. You Complete Me
Ability to tab to auto complete commonly typed words
```
cd ~/.vim/bundle
git clone https://github.com/valloric/youcompleteme
```
YouCompleteMe requires a couple of scripts to be run in order for all word associations to be connected, along with requires python 3 for installation
Here is what I did to install:
```
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
```
This sets up tab completion for all languages. 
More information and troubleshooting can be found here: https://vimawesome.com/plugin/youcompleteme
### 12. Current Theme: papaya
Sets coloring for word syntax
```
cd ~/.vim/bundle
git clone https://github.com/henrynewcomer/vim-theme-papaya
```
I also added the following to make sure the correct color schemes are being used:
```
set colorscheme=papaya
set background=dark
set t_Co=256 
```
I use this colorsheme compared to others due to its low contrast and dark theme, making it easier to look at no matter what time of day it is.
## Other related information
I use some built in vim configurations in my file to produce a look I enjoy for numbering and tabs. I use the following:
```
set relativenumber " Sets the numbering system to show how far your cursor is from a line
set number " Sets the current line you are on to be the exact number of the line in the file

set tabstop=2 " Sets all of my tabs to 2 
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent " Sets autoindentation to be completed for me
```

## Contributing
If you have suggestions on how to make any of the things better, please post the information in an issue and it will be looked over.

## Main Author
Scott Frauenknecht saf6260@rit.edu Second Year Software Engineering Student at Rochester Institute of Technology 

## Information
This document was last updated September 8th, 2018. If there are any major changes or issues, please post an issue so that it can be addressed properly.

## Shameless Plug
If you are looking to see more of what I have completed, feel free to visit my website www.scottalexf.com or any of my other git repositories found at https://github.com/saf6260
