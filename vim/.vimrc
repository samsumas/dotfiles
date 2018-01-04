" Make Vim more useful
set nocompatible
filetype off "for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim' " leo said its cool
Plugin 'Valloric/YouCompleteMe' " autocomplete
Plugin 'xuhdev/vim-latex-live-preview'  "latex
Plugin 'tpope/vim-surround' " surround
Plugin 'yegappan/mru' " recently used file :MRU
Plugin 'neomake/neomake' " make with :make
Plugin 'rdnetto/YCM-Generator' "helps with ycm
call vundle#end()            " required

let g:ycm_confirm_extra_conf = 0
let g:vimtex_view_general_viewer = 'okular' "open tex pdfs in okular

colorscheme dracula

filetype plugin indent on    " required
" Enhance command-line completion
set wildmenu
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Make tabs as wide as two spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

set showbreak=\ +++\         " Wrap-broken line prefix
set textwidth=0 wrapmargin=0 "DONT INSERT FUCKING NEWLINES IN MY FILES!!!
set showmatch   " Highlight matching brace
 
set incsearch   " Searches for strings incrementally
 
set autoindent  " Auto-indent new lines
set expandtab   " Use spaces instead of tabs
set shiftwidth=4        " Number of auto-indent spaces
set smartindent " Enable smart-indent
set softtabstop=4       " Number of spaces per Tab
 
"# Advanced
set ruler       " Show row and column ruler information
 
set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
