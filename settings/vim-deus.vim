set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Add `let s:ds.none = ['NONE', 'NONE']` to deus.vim.
let g:deus_sign_column = 'none'

"set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
