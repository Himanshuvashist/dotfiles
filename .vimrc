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
Plug 'sbdchd/neoformat'
Plug 'edkolev/tmuxline.vim'

" Initialize plugin system
call plug#end()

colorscheme monokai
