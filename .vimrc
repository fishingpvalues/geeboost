" ==========================
"  General Settings
" ==========================
set nocompatible    " Use Vim enhancements instead of vi compatibility mode
set encoding=utf-8  " Ensure UTF-8 support
set fileencoding=utf-8
set backspace=indent,eol,start " Allow backspace over everything
set clipboard=unnamedplus  " Use system clipboard for copy-paste
set mouse=a         " Enable mouse support
set history=1000    " Increase command history size

" ==========================
"  UI Improvements
" ==========================
set number          " Show line numbers
set relativenumber  " Show relative line numbers
set cursorline      " Highlight current line
set showcmd         " Show last command in bottom bar
set ruler           " Show cursor position
set wildmenu        " Improved command-line completion
set lazyredraw      " Optimize redrawing for performance
set showmatch       " Highlight matching parentheses
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set scrolloff=8     " Keep 8 lines visible when scrolling
set sidescrolloff=8 " Keep 8 columns visible when scrolling sideways

" ==========================
"  Indentation & Formatting
" ==========================
set tabstop=4       " Tab width = 4 spaces
set shiftwidth=4    " Indent width = 4 spaces
set expandtab       " Convert tabs to spaces
set autoindent      " Auto-indent new lines
set smartindent     " Better auto-indentation for C-like languages
set nowrap          " Disable line wrapping
set formatoptions+=j " Prevent removing comment leaders when joining lines

" ==========================
"  Searching
" ==========================
set ignorecase      " Case-insensitive searching
set smartcase       " Case-sensitive if search contains uppercase
set incsearch       " Show search matches while typing
set wrapscan        " Continue searching from start if not found

" ==========================
"  Key Mappings
" ==========================
nnoremap <C-s> :w<CR>         " Save file with Ctrl+S
nnoremap <C-q> :q<CR>         " Quit with Ctrl+Q
nnoremap <C-a> ggVG           " Select all text with Ctrl+A
nnoremap <C-z> u              " Undo with Ctrl+Z
inoremap jj <Esc>             " Exit insert mode with 'jj'
vnoremap < <gv                " Keep selection when indenting left
vnoremap > >gv                " Keep selection when indenting right
nnoremap Y y$                 " Make Y behave like D (yank to end of line)

" ==========================
"  Plugins (if using vim-plug)
" ==========================
if exists('g:vscode')
  " Inside VS Code - Use VSCode settings instead of heavy plugins
else
  call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'     " Better text manipulation
  Plug 'tpope/vim-commentary'   " Toggle comments easily
  Plug 'airblade/vim-gitgutter' " Git diff in the gutter
  Plug 'preservim/nerdtree'     " File explorer
  Plug 'itchyny/lightline.vim'  " Lightweight statusline
  call plug#end()
endif

" ==========================
"  VSCode-Specific Settings
" ==========================
if exists('g:vscode')
  " Use VSCode keybindings instead of Vim mappings
  " VSCodeVim will handle the rest
  set clipboard=unnamed
  set mouse=
endif
