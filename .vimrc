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
set nocompatible
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

imap <F4> <Esc>:tabnew<CR>:FufFile<CR>

map <F4> <Esc>:tabnew<CR>:FufFile<CR>

imap <F2> <Esc>:FufBuffer<CR>
map <F2> <Esc>:FufBuffer<CR>

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
let perl_fold=1
let perl_fold_blocks = 1


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
"setlocal spell spelllang=ru_yo,en_us


map gr :diffget 3<CR>
map gl :diffget 1<CR>
map g1 :diffget 2<CR>
map g2 :diffget 3<CR>
map g3 :diffget 4<CR>
set diffopt+=iwhite
filetype plugin indent on

"##############################################
set termencoding=utf-8
"set term=xterm-256color
"set t_Co=256 
"let &t_AB="\e[48;5;%dm" 
"let &t_AF="\e[38;5;%dm" 
 
let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"let g:solarized_underline=0
set background=dark
colorscheme solarized

set langmenu=ru_ru 
set helplang=ru,en 
lang mes ru_RU.utf-8


let g:netrw_cygwin=0 
let g:netrw_scp_cmd='scp' 
let g:netrw_silent=1 
let g:netrw_use_nt_rcp = 0 
let g:netrw_banner=0 
let $ROOT="scp://angeld@kitezhgrad5.combats.ru/sites/combats.ru/" 
let $TROOT=$ROOT."web/mobtmpl/" 
 
cabbrev ew tabnew $TROOT 
