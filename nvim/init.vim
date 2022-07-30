call plug#begin(stdpath('data') . '/plugged')

" Color
"Plug 'joshdick/onedark.vim'
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

" Tree
Plug 'preservim/nerdtree'

" Navigation
Plug 'christoomey/vim-tmux-navigator'

"HTML5
Plug 'mattn/emmet-vim'

" Javascript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Snippets

"Plug Typing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 
" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
 
" IDE
Plug 'Yggdroot/indentLine' 
Plug 'mhinz/vim-signify'
Plug 'junegunn/vim-easy-align'
Plug 'martinda/Jenkinsfile-vim-syntax'

" ================================================================
" Linters, validators, and autocomplete
" ================================================================
Plug 'alvan/vim-closetag'
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hashivim/vim-terraform'

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Comment
Plug 'preservim/nerdcommenter'

" Tmux
" Plug 'preservim/vimux'
" Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Setting: {{{
filetype indent plugin on
if !exists('g:syntax_on') | syntax enable | endif

set encoding=utf-8
scriptencoding utf-8

set backspace=indent,eol,start
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=-1
set tabstop=8
set textwidth=80

set title
set number
set numberwidth=1
set relativenumber
set hidden
set nofixendofline
set nostartofline
set splitbelow
set splitright

set hlsearch
set incsearch
set laststatus=2
set noruler
set signcolumn=yes
set updatetime=100

set cmdheight=2
set nobackup
set nowritebackup
set shortmess+=c

set clipboard=unnamedplus

au bufnewfile,bufread ssh_config,*/.ssh/config.d/*  setf sshconfig

"==============================================================================
" Theme
" =============================================================================

"colorscheme onedark
"set background=2ark
"colorscheme nord
colorscheme gruvbox
" }}}


" Onedarkconf: {{{
"if (empty($TMUX))
  "if (has("nvim"))
    "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "endif
  "if (has("termguicolors"))
    "set termguicolors
  "endif
"endif
" }}}

" Lightline: {{{
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" }}}
" =============================================================================
" Align
" =============================================================================

" Vim_Align_Plugin: {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" =============================================================================
" NERDTree
" =============================================================================
let g:NERDTreeShowHidden=1 
nnoremap <leader>] :NERDTreeToggle<CR>
nnoremap <Space>f :NERDTreeFind<CR>

" ================================================================
" vim-jsx
" ================================================================
" allow jsx syntax in .js files
let g:jsx_ext_required=0

" ================================================================
" vim-closetag
" ================================================================
" Update closetag to also work on js and html files, don't want ts since <> is used for type args
let g:closetag_filenames='*.html,*.js,*.jsx,*.tsx'
let g:closetag_regions = {
    \ 'typescript': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:vim_jsx_pretty_highlight_close_tag = 1



" Personal_kbind: {{{
vnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
map <c-f> :Files<CR>

" Split resize
nnoremap <Space>> 10<C-w>>
nnoremap <Space>< 10<C-w><

" Clipboard

"
""}}}
