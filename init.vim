:set number
:set nowrap

:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.config/nvim/plugged')
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'dsznajder/vscode-es7-javascript-react-snippets'
Plug 'mxw/vim-jsx'
" Track the engine.
Plug 'SirVer/ultisnips'

Plug 'sbdchd/neoformat'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
colorscheme tokyonight
let g:NERDTreeDirArrowExpandable="🔹"
let g:NERDTreeDirArrowCollapsible="🔻"
 airline symbols
noremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
