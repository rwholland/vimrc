" Use pathogen as the plugin manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax enable         " Enable syntax processing

set tabstop=4         " Number of visual spaces per tab
set softtabstop=4     " Number of spaces in tab when editing
set expandtab         " Tabs are spaces

set number            " Show line numbers

set showcmd           " Show command in bottom bar

set cursorline        " Highlight the current line

filetype indent on    " Load filetype-specific indent files

set wildmenu          " Visual autocomplete for command menu

set lazyredraw        " Redraw only when neeeded

set showmatch         " Highlight matching [{()}]

set incsearch         " Search as characters are entered
set hlsearch          " Highlight matches

set foldenable        " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10    " 10 nested fold max
set foldmethod=indent " Fold based on indent level

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Highlight last inserted line
nnoremap gV `[v`]

" Leader is comma
let mapleader=","

" jk or kj is escape
inoremap jk <esc>
inoremap kj <esc>

" Toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Save session
nnoremap <leader>s :mksession<CR>

" Use Silver Searcher for ack.vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif


