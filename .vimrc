"Pangu's .vimrc
  syntax on
  filetype plugin indent on
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set smartindent
" accommodate python files
" Optional: Set up specific settings for Python files
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 smartindent

" This is for line numbers
  set number
  set relativenumber " Optional: for relative line numbers

" for search and highlighting

  set incsearch
  set hlsearch

" Visual aids
  set colorcolumn=80 " Or 120, depending on preferred line length
  set signcolumn=yes " For showing signs from linters/plugins
