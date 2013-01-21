"===================================================================================
"         FILE:  .gvimrc
"  DESCRIPTION:  suggestion for a personal configuration file ~/.gvimrc
"       AUTHOR:  Dr.-Ing. Fritz Mehner
"      VERSION:  1.0
"      CREATED:  23.05.2008
"     REVISION:  $Id: customization.gvimrc,v 1.5 2009/04/04 08:26:53 mehner Exp $
"===================================================================================
"
"===================================================================================
" GENERAL SETTINGS
"===================================================================================

set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text

highlight Normal   guibg=grey90
highlight Cursor   guibg=Blue   guifg=NONE
highlight lCursor  guibg=Cyan   guifg=NONE
highlight NonText  guibg=grey80
highlight Constant gui=NONE     guibg=grey95
highlight Special  gui=NONE     guibg=grey95

"
"-------------------------------------------------------------------------------
" Moving cursor to other windows:
" shift down   : change window focus to lower one (cyclic)
" shift up     : change window focus to upper one (cyclic)
" shift left   : change window focus to one on left
" shift right  : change window focus to one on right
"-------------------------------------------------------------------------------
nnoremap <s-down>   <c-w>w
nnoremap <s-up>     <c-w>W
nnoremap <s-left>   <c-w>h
nnoremap <s-right>  <c-w>l
"
"-------------------------------------------------------------------------------
"  Some additional hot keys:
"    S-F3  -  call gvim file browser
"-------------------------------------------------------------------------------
 noremap  <silent> <s-F3>       :silent browse confirm e<CR>
inoremap  <silent> <s-F3>  <Esc>:silent browse confirm e<CR>
"
"-------------------------------------------------------------------------------
" toggle insert mode <--> 'normal mode with the <RightMouse>-key
"-------------------------------------------------------------------------------
nnoremap  <RightMouse> <Insert>
inoremap  <RightMouse> <ESC>
"
"-------------------------------------------------------------------------------
" use font with clearly distinguishable brackets : ()[]{}
"-------------------------------------------------------------------------------
"set guifont=Luxi\ Mono\ 14
if argc() == 0
  autocmd VimLeavePre * silent mksession! ./lastSession.vim
endif

"autocmd VimLeavePre * silent mksession! ./lastSession.vim
"autocmd VimEnter * silent source ./lastSession.vim

if getfsize("./lastSession.vim") >= 0
        source ./lastSession.vim
endif

"set nocompatible
"source $VIMRUNTIME/mswin.vim
"behave mswin

set guifont=Lucida\ Console:h10:cRUSSIAN
" ���������� ��� ������ � �������� ������� (����� w, b, * ��������
" ������� �����)
set iskeyword=@,48-57,_,192-255
syntax enable
set background=dark
colorscheme solarized
let python_highlight_all = 1
"����� ����������� �������� ������� �� ������ (������ � .py ������)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"� .py ������ �������� ����� ������� ����� �������� ����
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set expandtab
autocmd BufRead *.py set smarttab

nnoremap <c-tab>  :tabnext<CR>
nnoremap <c-s-tab>  :tabprev<CR>


nnoremap * *N
nnoremap <C-F8> :nohlsearch<CR>

imap <F4> <Esc>:tabnew<CR>:FufFile<CR>
map <F4> <Esc>:tabnew<CR>:FufFile<CR>

imap <F2> <Esc>:FufBuffer<CR>
map <F2> <Esc>:FufBuffer<CR>


imap <C-S> <Esc>:w<CR> 
map <C-S> <Esc>:w<CR> 

set nu!

set wildmode=longest,list

set columns=999
set lines=999

" ������ ���������
set tabstop=4
" ������ ������ ��� ������� �� ������� << � >>
set shiftwidth=4

" �������� ������ �� ���������� ������
set autoindent
" �������� '�����' �������������� ����������� ��������
set smartindent
" �������� ��������� ����������
syntax on

" �������� ������� �����
set wrap
" ������� ����� �� ������, � �� �� ������
set linebreak


" �������� ����������� ����������� � ������ ������ ������� � ������ ������ ���� ������.
" � �������, ���� �� �������� 2d, �� � ������ ������ ���� ������ Vim ��������� ������ 2d.
set showcmd
" �������� ����������� �������������� ���������� � ��������� ������
"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
set ls=2



" �������� ��������� ���������, ������� ������ � ������
set hlsearch
" ��� ������ ������������� �� ��������� ����� � �������� ������ ������
set incsearch
" ������������� ����� ��� ���������� ����� �����
set wrapscan
" ������������ ������� ���� ��� ������
set ignorecase


" ��������� �������� �������
set nobackup
" ��������� �������� swap ������
set noswapfile
"" ��� swap ����� ����� ���������� � ��� �����
"set dir=$HOME/.vim/swp

" �������� ����������� ������ (�������, � �� �������� ��� �������)
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

" ������� �������� �� ��������� ��� ����� �������� ������
setlocal foldlevelstart=0
" ����� �������� - �� ����������
"setlocal foldmethod=syntax








" ���� Encoding -->
" ����� ���������, � ������� ������ ���� -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Read.utf-8<Tab><F7> :e ++enc=utf8 <CR>
    menu Encoding.Read.windows-1251<Tab><F7> :e ++enc=cp1251<CR>
    menu Encoding.Read.koi8-r<Tab><F7> :e ++enc=koi8-r<CR>
    menu Encoding.Read.cp866<Tab><F7> :e ++enc=cp866<CR>
    map <F7> :emenu Encoding.Read.<TAB>
" ����� ���������, � ������� ������ ���� <--

" ����� ���������, � ������� ��������� ���� -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Write.utf-8<Tab><S-F7> :set fenc=utf8 <CR>
    menu Encoding.Write.windows-1251<Tab><S-F7> :set fenc=cp1251<CR>
    menu Encoding.Write.koi8-r<Tab><S-F7> :set fenc=koi8-r<CR>
    menu Encoding.Write.cp866<Tab><S-F7> :set fenc=cp866<CR>
    map <S-F7> :emenu Encoding.Write.<TAB>
" ����� ���������, � ������� ��������� ���� <--

" ����� ������� ������ ����� (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.End_line_format.unix<Tab><C-F7> :set fileformat=unix<CR>
    menu Encoding.End_line_format.dos<Tab><C-F7> :set fileformat=dos<CR>
    menu Encoding.End_line_format.mac<Tab><C-F7> :set fileformat=mac<CR>
    map <C-F7> :emenu Encoding.End_line_format.<TAB>
" ����� ������� ������ ����� (dos - <CR><NL>, unix - <NL>, mac - <CR>) <--
" ���� Encoding <--


set cursorline

" ��������� ���������, ������ ��������� � ���, ������� ������������ ��� ������ � ��������
"set termencoding=utf-8
set encoding=utf-8
" ��������� ��������� ������ � ������������������ �����������.
"set fileencodings=utf8,cp1251,ucs-2le
scriptencoding cp1251 
set helplang=ru,en 
lang mes ru_RU.utf-8

