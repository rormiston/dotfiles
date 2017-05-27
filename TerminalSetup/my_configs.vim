" Set numbers and relative numbers
set number
set rnu

" Vimwiki Setup
let g:vimwiki_list = [{
\ 'path': '~/notebook/vimwiki/',
\ 'template_default': 'template',
\ 'template_ext': '.html'}]

" Remap jk to <Esc>
inoremap jk <ESC>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ultisnips_python_style="numpy"
