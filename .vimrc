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
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

"Bundle 'vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'matchit.zip'
Bundle 'lua-support'

Bundle 'syntastic'
Bundle 'AutoComplPop'
Bundle 'L9'
"Bundle 'FuzzyFinder'

Bundle 'perl-support.vim'
Bundle 'zencoding.vim'
Bundle 'xml.vim'
"Bundle 'sql.vim'
"Bundle 'sqlplus.vim'
Bundle 'closetag.vim'
"Bundle 'taglist.vim'
Bundle 'jelera/vim-javascript-syntax'
"Bundle 'vim-perl/vim-perl'
Bundle 'NLKNguyen/pipe.vim'
Bundle 'NLKNguyen/pipe-mysql.vim'
Bundle 'c9s/perlomni.vim'
Bundle 'fatih/vim-go'
Bundle 'vitorleal/vim-go-syntax'
"Bundle 'osfameron/perl-tags-vim'


"source $VIMRUNTIME/vimrc_example.vim
"behave mswin
set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text

"-------------------------------------------------------------------------------
" Moving cursor to other windows:
" shift down   : change window focus to lower one (cyclic)
" shift up     : change window focus to upper one (cyclic)
" shift left   : change window focus to one on left
" shift right  : change window focus to one on right
"-------------------------------------------------------------------------------
"nnoremap <s-down>   <c-w>w
"nnoremap <s-up>     <c-w>W
"nnoremap <s-left>   <c-w>h
"nnoremap <s-right>  <c-w>l
"
"-------------------------------------------------------------------------------
"  Some additional hot keys:
"    S-F3  -  call gvim file browser
"-------------------------------------------------------------------------------
" noremap  <silent> <s-F3>       :silent browse confirm e<CR>
"inoremap  <silent> <s-F3>  <Esc>:silent browse confirm e<CR>
"
"-------------------------------------------------------------------------------
" toggle insert mode <--> 'normal mode with the <RightMouse>-key
"-------------------------------------------------------------------------------
"nnoremap  <RightMouse> <Insert>
"inoremap  <RightMouse> <ESC>
"
"-------------------------------------------------------------------------------
" use font with clearly distinguishable brackets : ()[]{}
"-------------------------------------------------------------------------------
"set guifont=Luxi\ Mono\ 14
"if argc() == 0
"  autocmd VimLeavePre * silent mksession! $HOME/.vim/lastSession.vim
"endif

"autocmd VimLeavePre * silent mksession! $HOME/lastSession.vim
"autocmd VimEnter * silent source $HOME/lastSession.vim

"if getfsize("$HOME/.vim/lastSession.vim") >= 0
"        source $HOME/.vim/lastSession.vim
"endif

"set nocompatible
"source $VIMRUNTIME/mswin.vim
"behave mswin

set guifont=Lucida\ Console:h10:cRUSSIAN

set iskeyword=@,48-57,_,192-255

"nnoremap <c-tab>  :tabnext<CR>
"nnoremap <c-s-tab>  :tabprev<CR>
map <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pagedown>  <Esc>:tabnext<CR>

map <s-tab>  <Esc>:tabprev<CR>
nmap <s-tab>  <Esc>:tabprev<CR>
nmap <tab>  <Esc>:tabnext<CR>

"nnoremap * *N
nnoremap <F8> :nohlsearch<CR>

imap <F4> <Esc>:tabnew<CR>
":CtrlP<CR>
":FufFile<CR>

map <F4> <Esc>:tabnew<CR>
":CtrlP<CR>
":FufFile<CR>

imap <F2> <Esc>:CtrlPBuffer<CR>
map <F2> <Esc>:CtrlPBuffer<CR>

imap <F6> <Esc>:mksession! $HOME/.vim/lastSession.vim<CR>
map <F6> <Esc>:mksession! $HOME/.vim/lastSession.vim<CR>
map <F9> <Esc>:source $HOME/.vim/lastSession.vim<CR>

imap <C-S> <Esc>:w<CR> 
map <C-S> <Esc>:w<CR> 

map <F10> <Esc>:qa<CR>
set nu!

map <F7> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
set wildmode=longest,list

set columns=999
set lines=999

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab ts=4 sw=4 ss=4 ai
syntax on
"syntax enable



set showcmd
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
set ls=2

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


:map [[ ?{<CR>w99[{
:map ][ /}<CR>b99]}
:map ]] j0[[%/{<CR>
:map [] k$][%?}<CR>

":inoremap ( ()<Esc>i
":inoremap { {}<Esc>i
":inoremap [ []<Esc>i
":inoremap < <><Esc>i
set path=.,,**

let Tlist_GainFocus_On_ToggleOpen = 1
imap <F5> <Esc>:TlistToggle<CR> 
map <F5> <Esc>:TlistToggle<CR> 

setlocal foldlevelstart=0
setlocal foldmethod=syntax
set foldnestmax=3
let perl_fold=1
let perl_fold_blocks = 0


" ???? Encoding -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Read.utf-8<Tab><F7> :e ++enc=utf8 <CR>
    menu Encoding.Read.windows-1251<Tab><F7> :e ++enc=cp1251<CR>
    menu Encoding.Read.koi8-r<Tab><F7> :e ++enc=koi8-r<CR>
    menu Encoding.Read.cp866<Tab><F7> :e ++enc=cp866<CR>
    map <F7> :emenu Encoding.Read.<TAB>

    set wildmenu
    set wcm=<Tab>
    menu Encoding.Write.utf-8<Tab><S-F7> :set fenc=utf8 <CR>
    menu Encoding.Write.windows-1251<Tab><S-F7> :set fenc=cp1251<CR>
    menu Encoding.Write.koi8-r<Tab><S-F7> :set fenc=koi8-r<CR>
    menu Encoding.Write.cp866<Tab><S-F7> :set fenc=cp866<CR>
    map <S-F7> :emenu Encoding.Write.<TAB>

" ????? ??????? ?????? ????? (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.End_line_format.unix<Tab><C-F7> :set fileformat=unix<CR>
    menu Encoding.End_line_format.dos<Tab><C-F7> :set fileformat=dos<CR>
    menu Encoding.End_line_format.mac<Tab><C-F7> :set fileformat=mac<CR>
    map <C-F7> :emenu Encoding.End_line_format.<TAB>
" ????? ??????? ?????? ????? (dos - <CR><NL>, unix - <NL>, mac - <CR>) <--
" ???? Encoding <--



set fileencodings=utf8,cp1251
set ffs=unix,dos
set fileformat=unix
set cursorline


"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

"imap :!setxkbmap us:!setxkbmap us,ru
"nmap :!setxkbmap us:!setxkbmap us,ru


map gr :diffget 3<CR>
map gl :diffget 1<CR>
map g1 :diffget 2<CR>
map g2 :diffget 3<CR>
map g3 :diffget 4<CR>
set diffopt+=iwhite


"##############################################
set termencoding=utf8
set term=xterm-256color
set t_Co=256 
"let &t_AB="\e[48;5;%dm" 
"let &t_AF="\e[38;5;%dm" 
 
let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"let g:solarized_underline=0
set background=dark
colorscheme solarized

set langmenu=ru_ru 
set helplang=ru,en 
lang mes ru_RU.utf8


let g:netrw_cygwin=0 
let g:netrw_scp_cmd='scp' 
let g:netrw_silent=1 
let g:netrw_use_nt_rcp = 0 
let g:netrw_banner=0 
let $ROOT="scp://angeld@kitezhgrad5.combats.ru/sites/combats.ru/" 
let $TROOT=$ROOT."web/mobtmpl/" 
 
cabbrev ew tabnew $TROOT 

if version >= 700
    set history=64
"    set undolevels=128
	"    set undodir=~/.vim/undodir/
"    set undofile
"    set undolevels=1000
"    set undoreload=10000
endif
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
let g:xml_syntax_folding = 1
set tags=./tags,tags,~/tags
au FileType xml setlocal foldmethod=syntax
au FileType lua setlocal foldmethod=syntax
au FileType javascript call JavaScriptFold()
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
source ~/.vimrc_mail
func! CheckPerlSyntax()
	let mpr = &makeprg
	let ef = &errorformat
	let exeFile = expand("%:t")
	let l:currentbuffer   = bufname("%")
	let l:fullname        = expand("%:p")
	exe ':setlocal makeprg=perl\ -c'
	exe ':set errorformat=
				\%-G%.%#had\ compilation\ errors.,
				\%-G%.%#syntax\ OK,
				\%m\ at\ %f\ line\ %l.,
				\%+A%.%#\ at\ %f\ line\ %l\\,%.%#,
				\%+C%.%#'
	silent exe  ':make  '. shellescape (l:fullname) 
	exe ":botright cwindow"
	let &makeprg     = mpr
	let &errorformat = ef
	redraw!
	if l:currentbuffer ==  bufname("%")
		echohl Search
		echomsg l:currentbuffer." : Syntax is OK"
		echohl None
		return 0
	else
		setlocal wrap
		setlocal linebreak
	endif

endfunc

"nmap pl :!perl %<.pl<CR>
"map <S-F9> :call CheckPerlSyntax()<CR>
nmap cpl :call CheckPerlSyntax()<CR>
let g:ctrlp_max_depth=15
let g:go_version_warning = 0


noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
