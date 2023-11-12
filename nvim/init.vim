set nocompatible
filetype plugin on
syntax on

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")

" Dadbod and DadbodUI
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" GitHub Copilot
Plug 'github/copilot.vim'

" Vimwiki
Plug 'vimwiki/vimwiki'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

" Popup
Plug 'nvim-lua/popup.nvim'

" Cheatsheet
Plug 'sudormrfbin/cheatsheet.nvim'

" Themes
Plug 'ayu-theme/ayu-vim'

call plug#end()

" Colorscheme
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Custom keybindings
" Make leader key to space
let mapleader = " "
" Open vertical split using space-p-v
nnoremap <leader>pv :Vex<CR>
" Source init.vim using space-enter
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" Copilot autocomplete using ctrl-e
imap <silent><script><expr> <C-e> copilot#Accept('\<CR>')
let g:copilot_no_tab_map = v:true

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nvim settings
set number
set relativenumber
set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" When yanking, highlight the lines that were yanked.
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" Vimwiki Settings
let g:vimwiki_list = [{'path': '~/workspace/ajkingio/notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]




"Old config
"call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
"Plug 'chrisbra/csv.vim'
"call plug#end()

" auto use csv.vim plugin for csvs.
"autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
"autocmd BufWritePre *.csv :%UnArrangeColumn

"set clipboard+=unnamedplus

"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
noremap <Right> <Nop>

" no swap file
"set noswapfile

" save undo-trees in files
"set undofile
"set undodir=$HOME/.config/nvim/undo
" number of undo saved
"set undolevels=10000
"set undoreload=10000

" set line number
"set number

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line
"set autoindent
"set expandtab
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
