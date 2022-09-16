" Disable compatibility with vi
set nocompatible

" Enable file detection
filetype on

" Enable plugins
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn on syntax highlighting
syntax on

" Set colorscheme
colorscheme onedark

" Add line numbers
set number

" Highlight cursor line
set cursorline

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" Ignore capital letters during search
set ignorecase

" Override ignorecase if searching for capital letters
set smartcase

" Show partial command you type in last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set hlsearch

" Enable autocompletion after pressing tab
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Set paste
set paste 

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

 	"Plug 'vim-airline/vim-airline'	

call plug#end()

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

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Set airline theme
"let g:airline_theme='onedark'

" Clear status line when vimrc is reloaded
set statusline=

" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R

" Use divider
set statusline+=%=

"Status line right side
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show status line on second to last line
set laststatus=2

" }}}

