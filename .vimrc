" Need syntax to be on
syntax on
filetype on

" Doesn't have to be compatible with vi
set nocompatible

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" This also works for the mac os. Unless you are using really old versions of
" Mac, this is okay
set fileformat=unix
set encoding=UTF-8

" 4 spaces for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
" set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

" Customize editor
set cursorline
" set cursorcolumn
set number
set relativenumber
set scrolloff=8
set signcolumn=yes

" Show partial command you type in the last line of the screen.
set showcmd
set conceallevel=1

" Show the mode you are on the last line.
set showmode

" Ignore capital letters during search but override when serachin for caps in query
set ignorecase
set smartcase

" While searching though a file incrementally highlight matching characters as you type.
set incsearch
set hlsearch

" Show matching words during a search.
set showmatch


set mouse=a

" ensure that long sentences are wrapped 
set wrap
" set textwidth for markdown files 
au BufRead,BufNewFile *.md 
  \ setlocal textwidth=80

" set colorscheme to slate
" colorscheme elflord

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" If GUI version of Vim is running set these options.
if has('gui_running')

    " Set the background tone.
    set background=dark

    " Set the color scheme.
    colorscheme molokai

    " Set a custom font you have installed on your computer.
    " Syntax: set guifont=<font_name>\ <font_weight>\ <size>
    set guifont=SF\ Mono\ 14

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the right-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

endif

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
