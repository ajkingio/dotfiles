call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
Plug 'chrisbra/csv.vim'
call plug#end()

" auto use csv.vim plugin for csvs.
autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" no swap file
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
" number of undo saved
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
