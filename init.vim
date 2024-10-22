call plug#begin('~/Appdata/Local/nvim/plugged')
	Plug 'https://github.com/tpope/vim-surround'
"	Plug 'https://github.com/github/copilot.vim'

	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/vim-airline/vim-airline-themes'
	Plug 'tribela/vim-transparent'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
	Plug 'https://github.com/tiagofumo/vim:-nerdtree-syntax-highlight'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
	Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
	Plug 'romgrk/barbar.nvim'

"	Plug 'https://github.com/folke/tokyonight.nvim'
	
	Plug 'https://github.com/voldikss/vim-floaterm'

	Plug 'neoclide/coc.nvim',{'branch': 'release'}
	Plug 'alvan/vim-closetag'
	Plug 'mattn/emmet-vim'
	Plug 'jackguo380/vim-lsp-cxx-highlight'
	Plug 'https://github.com/PhilRunninger/nerdtree-buffer-ops'


	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'https://github.com/mfussenegger/nvim-dap'
call plug#end()

set number
set relativenumber
set mouse=a
set autoindent
set list
syntax on
set ignorecase
set formatoptions-=cro
set history=1000
set cin
set smarttab
colorscheme deus
set guifont=DroidSansMono\ Nerd\ Font:h10
let g:webdevicons_enable_nerdtree = 1
"colors deus
"colorscheme poimandres
if has ('win32')
	set clipboard=unnamed
else
	set clipboard=unnamedplus
endif
"nnoremap <Space> <CR>
tnoremap <ESC> <C-\> <C-n>
noremap <C-F9> <ESC> :w <CR> :FloatermNew --autoclose=0  g++ % -std=c++17 -O2 -Wall -o %< && %<  <CR>
noremap <C-F10> <ESC> :FloatermNew --autoclose=0 %< <CR>
noremap <leader>ca <ESC> :%y+ <CR>
 let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

" Pmenu
let g:transparent_groups += ['Pmenu']

" coc.nvim
let g:transparent_groups += ['NormalFloat', 'CocFloating']

augroup transparent
    autocmd VimEnter,ColorScheme * call MyTransparent()
augroup END

function! MyTransparent()
    " Customize the highlight groups for transparency in here.

    " CursorLine
    "hi CursorLine ctermfg=NONE ctermbg=239 guibg=NONE guibg=#4e4e4e

    " coc.nvim
    "hi CocMenuSel ctermbg=239 guibg=#4e4e4e
endfunction
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType cpp let b:coc_pairs_disabled = ['<']


let nvim_setting_dir = '~\AppData\Local\nvim\settings\'
execute 'source' .nvim_setting_dir.'coc.vim'
execute 'source' .nvim_setting_dir.'nerdtree.vim'
execute 'source' .nvim_setting_dir.'barbar.vim'
execute 'source' .nvim_setting_dir.'floaterm.vim'
execute 'source' .nvim_setting_dir.'treesitter.lua'
"execute 'source '.nvim_setting_dir.'vim-deus.vim'
