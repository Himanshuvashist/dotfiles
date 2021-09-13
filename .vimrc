syntax on
set smartindent
set nu
set nowrap
set noswapfile
set smartcase
set incsearch

call plug#begin('~/.var/app/io.neovim.nvim/data/nvim/site/autoload')

" My plugins
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'kien/ctrlp.vim'
Plug 'crusoexia/vim-monokai'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'valloric/youcomplete'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'eslint/eslint'
" Plug 'sbdchd/neoformat'
Plug 'edkolev/tmuxline.vim'
Plug 'w0rp/ale'
" Initialize plugin system
call plug#end()

colorscheme monokai

let NERDTreeShowHidden=1

let g:js_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
			\  '*': ['remove_trailing_lines', 'trim_whitespace'],
			\ 'javascript': js_fixers,
			\ 'javascript.jsx': js_fixers,
			\ 'typescript': js_fixers,
			\ 'typescriptreact': js_fixers,
			\ 'css': ['prettier'],
			\ 'json': ['prettier'],
			\ }
let g:ale_fix_on_save = 1
