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
"Plug 'kien/ctrlp.vim'
"Plug 'tmhedberg/matchit'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/VisIncr'
"Plug 'vim-syntastic/syntastic'
Plug 'c9s/perlomni.vim'
Plug 'WolfgangMehner/lua-support'
Plug 'tbastos/vim-lua'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/perl-support.vim'
Plug 'vim-perl/vim-perl'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/taglist.vim'
Plug '~/utils/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vimlab/neojs'

"Bundle 'L9'
""Bundle 'FuzzyFinder'

"Bundle 'zencoding.vim'
"Bundle 'xml.vim'
"Bundle 'closetag.vim'
"Bundle 'c9s/perlomni.vim'
call plug#end()
runtime macros/matchit.vim

set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text
"set mouse=a

"set keymap=russian-jcukenwin    " настраиваем переключение раскладок клавиатуры по C-^
set iminsert=0                  " раскладка по умолчанию для ввода - английская
set imsearch=0                  " раскладка по умолчанию для поиска - английская

set guifont=Lucida\ Console:h10:cRUSSIAN
set iskeyword=@,48-57,_,192-255
map <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pagedown>  <Esc>:tabnext<CR>

map <s-tab>  <Esc>:tabprev<CR>
nmap <s-tab>  <Esc>:tabprev<CR>
"nmap <tab>  <Esc>:tabnext<CR>

nnoremap <F8> :nohlsearch<CR>

imap <F4> <Esc>:tabnew<CR>

map <F4> <Esc>:tabnew<CR>

imap <F2> <Esc>:Buffers<CR>
map <F2> <Esc>:Buffers<CR>

imap <F3> <Esc>:Files<CR>
map <F3> <Esc>:Files<CR>

"imap <C-p> <Esc>:Files<CR>
"map <C-p> <Esc>:Files<CR>

"imap <F2> <Esc>:CtrlPBuffer<CR>
"map <F2> <Esc>:CtrlPBuffer<CR>

imap <C-S> <Esc>:w<CR>
map <C-S> <Esc>:w<CR>
imap <C-_> <Esc>
map <C-_> <Esc>
 

nmap <F5> <Esc>:b#<CR>
map <F5> <Esc>:b#<CR>
map <F10> <Esc>:bw<CR>
set nu!


set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab ts=4 sw=4 ai
syntax on

set showcmd
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%{fugitive#statusline()}%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
set ls=2
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_quiet_messages = { 'regex': 'malformed number' }
let g:syntastic_perl_checkers=['perl']


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

"setlocal foldlevelstart=1
setlocal foldmethod=syntax
set foldnestmax=5
let perl_fold=1
"let perl_fold_blocks = 1
let sh_fold_enabled = 1
let perl_extended_vars=1
let perl_sync_dist=250
let perl_fold_anonymous_subs = 1
let perl_nofold_packages = 1
let perl_include_pod = 1
let perl_sub_signatures = 1

set fileencodings=utf8,cp1251
set ffs=unix,dos
set fileformat=unix
set cursorline

"let g:solarized_use16 = 1
let g:solarized_termcolors=256
set background=dark
silent! colorscheme solarized
"colorscheme NeoSolarized
"set termguicolors

set termencoding=utf8
set langmenu=ru_ru 
set helplang=ru,en 
"lang mes ru_RU.utf8
 
set history=64

set tags=./tags,tags,../tags

"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci

let g:xml_syntax_folding = 1

au FileType xml setlocal foldmethod=syntax
au FileType lua setlocal foldmethod=syntax
au FileType perl setlocal foldmethod=syntax
"autocmd FileType perl call deoplete#custom#buffer_option('auto_complete', v:false)
"au FileType javascript call JavaScriptFold()
"autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
"autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

let g:Lua_Ctrl_j = 'no'
"nmap cpl :call CheckPerlSyntax()<CR>
let g:ctrlp_extensions = ['tag']
let g:ctrlp_max_depth=15
let g:ctrlp_max_files=30000 

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules$\|frontend$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$|\.jpg$' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
"command! -bang -nargs=* GGrep
"  \ call fzf#vim#grep(
"  \   'git grep --line-number '.shellescape(<q-args>), 0,
"  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

nmap <Leader>t :TlistOpen<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>p :Files<CR>
"let g:ale_fixers = {
"            \   'perl': ['perltidy'],
"            \}
let g:ale_linters = {
            \   'perl': ['perl'],
            \   'lua': ['luac'],
            \}
let g:ale_type_map = {
\ 'perlcritic': {'ES': 'WS', 'E': 'W'},
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" " This is off by default.
let g:ale_perl_perl_options = '-c -Mwarnings -Ilib -It/lib'
let g:ale_perl_perlcritic_showrules = 1
"let g:ale_fix_on_save = 1
"let g:ale_completion_enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
"let g:airline#extensions#ale#enabled = 1

"let Tlist_Auto_Open = 1
"let Tlist_Show_One_File = 1
let Tlist_Close_On_Select = 1
let g:deoplete#enable_at_startup = 1

let g:lua_check_syntax = 1
let g:lua_complete_omni = 1
let g:lua_complete_dynamic = 1
let g:lua_define_completion_mappings = 1

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set diffopt+=vertical

inoremap <C-_> <Esc>
tnoremap <C-_> <Esc>
 noremap <C-_> <Esc>
cnoremap <C-_> <Esc>
"cnoremap qj <Esc>
"inoremap qj <Esc>
"tnoremap qj <Esc>

set keymap=russian-dvorak
"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent> C-h :TmuxNavigateLeft<cr>
"nnoremap <silent> C-j :TmuxNavigateDown<cr>
"nnoremap <silent> C-k :TmuxNavigateUp<cr>
"nnoremap <silent> C-l :TmuxNavigateRight<cr>
"nnoremap <silent> C-\\ :TmuxNavigatePrevious<cr>
"
