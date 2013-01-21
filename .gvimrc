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
"
set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text

"
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
nnoremap  <RightMouse> <Insert>
inoremap  <RightMouse> <ESC>
"
"-------------------------------------------------------------------------------
" use font with clearly distinguishable brackets : ()[]{}
"-------------------------------------------------------------------------------
"set guifont=Luxi\ Mono\ 14
"if argc() == 0
"  autocmd VimLeavePre * silent mksession! ./lastSession.vim
"endif

"autocmd VimLeavePre * silent mksession! ./lastSession.vim
"autocmd VimEnter * silent source ./lastSession.vim

"if getfsize("./lastSession.vim") >= 0
"        source ./lastSession.vim
"endif

"set nocompatible
"source $VIMRUNTIME/mswin.vim
"behave mswin

set guifont=Lucida\ Console:h10:cRUSSIAN

" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

"python
imap <F12> <Esc>:lcd %:p:h <bar> exe'!python '.expand('%') <bar> lcd -<CR>
map <F12> <Esc>:lcd %:p:h <bar> exe'!python '.expand('%') <bar> lcd -<CR>
let perl_fold=1
let perl_fold_blocks = 1
let javaScript_fold=1

map gr :diffget 3<CR>
map gl :diffget 1<CR>
map g1 :diffget 2<CR>
map g2 :diffget 3<CR>
map g3 :diffget 4<CR>
set diffopt+=iwhite
filetype on
filetype plugin on
filetype indent on

autocmd FileType html setlocal shiftwidth=2 tabstop=2


set nocp
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 2

if has("win32")
	nnoremap <c-tab>  :tabnext<CR>
	nnoremap <c-s-tab>  :tabprev<CR>
else
	map <s-tab>  :tabprev<CR>
	nmap <s-tab>  :tabprev<CR>
	nmap <tab>  <Esc>:tabnext<CR>
endif


"nnoremap * *N
nnoremap <F8> :nohlsearch<CR>
nmap <silent> <F3> <Plug>ToggleProject
let proj_flags='imstT'


imap <F4> <Esc>:tabnew<CR>:FufFile<CR>
map <F4> <Esc>:tabnew<CR>:FufFile<CR>

imap <F2> <Esc>:FufBuffer<CR>
map <F2> <Esc>:FufBuffer<CR>

imap <F6> <Esc>:mksession! $HOME/.vim/lastsession.vim<CR>
map <F6> <Esc>:mksession! $HOME/.vim/lastsession.vim<CR>
map <F9> <Esc>:source $HOME/.vim/lastsession.vim<CR>

imap <C-S> <Esc>:w<CR> 
map <C-S> <Esc>:w<CR> 

map <F10> <Esc>:qa<CR>
set nu!

map <F7> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
set wildmode=longest,list

set nu!

set wildmode=longest,list

set columns=999
set lines=999

" Размер табуляции
set tabstop=4
" Размер сдвига при нажатии на клавиши << и >>
set shiftwidth=4
" Копирует отступ от предыдущей строки
set autoindent
" Включаем 'умную' автоматическую расстановку отступов
set smartindent
" Включаем подсветку синтаксиса
syntax on

" Включаем перенос строк
set wrap
" Перенос строк по словам, а не по буквам
set linebreak


" Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана.
" К примеру, если вы наберете 2d, то в правом нижнем углу экрана Vim отобразит строку 2d.
set showcmd
" Включаем отображение дополнительной информации в статусной строке
"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
set ls=2


" Включаем подсветку выражения, которое ищется в тексте
set hlsearch
" При поиске перескакивать на найденный текст в процессе набора строки
set incsearch
" Останавливать поиск при достижении конца файла
set wrapscan
" Игнорировать регистр букв при поиске
set ignorecase


" Отключаем создание бэкапов
set nobackup
" Отключаем создание swap файлов
set noswapfile
"" Все swap файлы будут помещаться в эту папку
"set dir=$HOME/.vim/swp

" Включает виртуальный звонок (моргает, а не бибикает при ошибках)
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

" Уровень сокрытия по умолчанию для вновь открытых файлов
setlocal foldlevelstart=0
" Метод фолдинга - по синтаксису
setlocal foldmethod=syntax


" Меню Encoding -->
" Выбор кодировки, в которой читать файл -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Read.utf-8<Tab><F7> :e ++enc=utf8 <CR>
    menu Encoding.Read.windows-1251<Tab><F7> :e ++enc=cp1251<CR>
    menu Encoding.Read.koi8-r<Tab><F7> :e ++enc=koi8-r<CR>
    menu Encoding.Read.cp866<Tab><F7> :e ++enc=cp866<CR>
    map <F7> :emenu Encoding.Read.<TAB>
" Выбор кодировки, в которой читать файл <--

" Выбор кодировки, в которой сохранять файл -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.Write.utf-8<Tab><S-F7> :set fenc=utf8 <CR>
    menu Encoding.Write.windows-1251<Tab><S-F7> :set fenc=cp1251<CR>
    menu Encoding.Write.koi8-r<Tab><S-F7> :set fenc=koi8-r<CR>
    menu Encoding.Write.cp866<Tab><S-F7> :set fenc=cp866<CR>
    map <S-F7> :emenu Encoding.Write.<TAB>
" Выбор кодировки, в которой сохранять файл <--

" Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
    set wildmenu
    set wcm=<Tab>
    menu Encoding.End_line_format.unix<Tab><C-F7> :set fileformat=unix<CR>
    menu Encoding.End_line_format.dos<Tab><C-F7> :set fileformat=dos<CR>
    menu Encoding.End_line_format.mac<Tab><C-F7> :set fileformat=mac<CR>
    map <C-F7> :emenu Encoding.End_line_format.<TAB>
" Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) <--
" Меню Encoding <--


" Кодировка терминала, должна совпадать с той, которая используется для вывода в терминал
set termencoding=utf-8
set encoding=utf-8
" возможные кодировки файлов и последовательность определения.
"set fileencodings=utf8,cp1251
set cursorline
scriptencoding cp1251

set langmenu=ru_ru 
set helplang=ru,en 
lang mes ru_RU.utf-8

