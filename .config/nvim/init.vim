"===================================================================================
"         FILE:  .gvimrc
"  DESCRIPTION:  suggestion for a personal configuration file ~/.gvimrc
"       AUTHOR:  AngelD
"      VERSION:  1.0
"      CREATED:  23.05.2008
"     REVISION:  $Id:  $
"===================================================================================
"===================================================================================
" GENERAL SETTINGS
"===================================================================================
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
set nocompatible
filetype off
filetype plugin indent on
call plug#begin('~/.config/nvim/plugins')
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'kien/ctrlp.vim'
Plug 'tmhedberg/matchit'
Plug 'vim-scripts/perl-support.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-syntastic/syntastic'
Plug 'c9s/perlomni.vim'
"Plug 'vimlab/neojs'

"Bundle 'kien/ctrlp.vim'
"Bundle 'matchit.zip'
"Bundle 'lua-support'

"Bundle 'syntastic'
"Bundle 'AutoComplPop'
"Bundle 'L9'
""Bundle 'FuzzyFinder'

"Bundle 'perl-support.vim'
"Bundle 'zencoding.vim'
"Bundle 'xml.vim'
"Bundle 'closetag.vim'
"Bundle 'c9s/perlomni.vim'
call plug#end()

set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text

set guifont=Lucida\ Console:h10:cRUSSIAN
set iskeyword=@,48-57,_,192-255
map <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pagedown>  <Esc>:tabnext<CR>

map <s-tab>  <Esc>:tabprev<CR>
nmap <s-tab>  <Esc>:tabprev<CR>
nmap <tab>  <Esc>:tabnext<CR>

nnoremap <F8> :nohlsearch<CR>

imap <F4> <Esc>:tabnew<CR>

map <F4> <Esc>:tabnew<CR>

imap <F2> <Esc>:CtrlPBuffer<CR>
map <F2> <Esc>:CtrlPBuffer<CR>

imap <C-S> <Esc>:w<CR> 
map <C-S> <Esc>:w<CR> 

map <F10> <Esc>:qa<CR>
set nu!


set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab ts=4 sw=4 ai
syntax on

set showcmd
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
set ls=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1

set wrap
set linebreak

set hlsearch
set incsearch
set wrapscan
set ignorecase


set nobackup
set nowritebackup
set noswapfile

set visualbell

set path=.,,**

setlocal foldlevelstart=1
setlocal foldmethod=syntax
set foldnestmax=3
let perl_fold=1
let perl_fold_blocks = 1

set fileencodings=utf8,cp1251
set ffs=unix,dos
set fileformat=unix
set cursorline

"let g:solarized_use16 = 1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized8
"set termguicolors

set termencoding=utf8
set langmenu=ru_ru 
set helplang=ru,en 
lang mes ru_RU.utf8
 
set history=64

set tags=./tags,tags,~/tags

"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci

let g:xml_syntax_folding = 1

au FileType xml setlocal foldmethod=syntax
au FileType lua setlocal foldmethod=syntax
"au FileType javascript call JavaScriptFold()
"autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
"autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

"nmap cpl :call CheckPerlSyntax()<CR>
let g:ctrlp_max_depth=15
let g:ctrlp_max_files=30000 

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$\|frontend$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$|\.jpg$' }
