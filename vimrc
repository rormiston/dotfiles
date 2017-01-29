" Set up colors and syntax
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Uncomment the lines below to start up NERDTree automatically
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Remap keys
map <D-Right> :tabn<CR>
map <D-Left>  :tabp<CR>

" Set tabs to indent the right way
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" link to vim bindings in powerline
set rtp+=/Users/richormiston/.local/lib/python3.5/site-packages/powerline/bindings/vim
 
" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
  
" Lots of powerline stuff. Not sure if I need this anymore
let g:minBufExplForceSyntaxEnable = 1
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
                               
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:Powerline_symbols = 'fancy'

" Tpope's pathogen is a must
execute pathogen#infect()

" A few things I really like 
set paste
set number
set rnu
