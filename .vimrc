syntax on
set smartindent
set nu
set nowrap
set noswapfile
set smartcase
set incsearch
set relativenumber





" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.var/app/io.neovim.nvim/data/nvim/site/autoload')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'






" My plugins
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'kien/ctrlp.vim'
Plug 'crusoexia/vim-monokai'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
" Plug 'valloric/youcomplete'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'eslint/eslint'
" Plug 'sbdchd/neoformat'
Plug 'edkolev/tmuxline.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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
