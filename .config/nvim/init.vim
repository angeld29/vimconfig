"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"curl -fLo %LOCALAPPDATA%/nvim/autoload/plug.vim --create-dirs    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.config/nvim/plugins')
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'flazz/vim-colorschemes'
Plug 'yuchao86/Learn-Vimscript-the-Hard-Way'

Plug 'godlygeek/tabular'
"Plug 'easymotion/vim-easymotion'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentline'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp'

Plug 'christoomey/vim-tmux-navigator'
"Produce increasing/decreasing columns of numbers, dates, or daynames
":I :II :IO :IX
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'vim-scripts/VisIncr'

Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'Konfekt/FastFold'
"Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/taglist.vim'

Plug 'dense-analysis/ale'
"Plug 'Shougo/deoplete.nvim'
"Plug 'ncm2/ncm2'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'WolfgangMehner/lua-support'
"Plug 'tbastos/vim-lua'
"== Perl
"Plug 'c9s/perlomni.vim'
"Plug 'vim-scripts/perl-support.vim'
Plug 'vim-perl/vim-perl'

"Plug 'OrangeT/vim-csharp'
"Plug 'OmniSharp/omnisharp-vim'

Plug 'fatih/vim-go'


call plug#end()
set nocompatible
filetype off
filetype plugin indent on

"let g:python3_host_prog='g:\prog\Python36-32\python.exe'
let g:python3_host_prog='/home/sites/pypo_venv/bin/python'

"runtime macros/matchit.vim "не требуется для загрузки
set keymap=russian-dvorakpr
"set langmap=укенгшщзхъфывапролджэячсмитьбюёЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЧСМИТЬБЮЁЯ;.pyfgcrl/@aoeuidhtns-'qjkxbmwvz:<>PYFGCRL?^AOEUIDHTNS_QJKXBMWVZ\"
"set guifont=Lucida\ Console:h10:cRUSSIAN
set iskeyword=@,48-57,_,192-255

set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text
"set mouse=a

set iminsert=0                  " раскладка по умолчанию для ввода - английская
set imsearch=0                  " раскладка по умолчанию для поиска - английская

"let g:solarized_termcolors=256
set background=dark
"silent! colorscheme solarized
silent! colorscheme NeoSolarized
"silent! colorscheme gruvbox
"silent! colorscheme afterglow
"silent! colorscheme flattened_dark
"
"silent! colorscheme materialbox
"silent! colorscheme onedark
"silent! colorscheme stellarized
"silent! colorscheme OceanicNext
"silent! colorscheme deus

set termguicolors

set fileencodings=utf8,cp1251
set ffs=unix,dos
set fileformat=unix
set cursorline
set wildmode=list:lastused,full
set termencoding=utf8
set langmenu=ru_ru 
set helplang=ru,en 

set tags=./tags,tags,../tags


set lazyredraw "Не перерисовывать экран посреди макроса (для повышения производительности).
set smartcase " поиск с заглавными буквами чувствителен к регистру
set ignorecase

set inccommand=nosplit "показывает в реальном времени, какие изменения внесёт команда

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab ts=4 sw=4 ai
set number
syntax on

set showcmd
set statusline=%<%h%m%r\ L:%l/%L[%P]\ C:%c%V\ %m%{fugitive#statusline()}%f\ \|%{v:register}\ %=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B
if exists('g:started_by_firenvim')
    set laststatus=0
else
    set laststatus=2
endif

set linebreak

set hlsearch
set incsearch
set wrapscan
set wrap
set hidden

set nobackup
set nowritebackup
set noswapfile
set undofile "Сохранение действий, даже если вы закрываете и открываете Vim

set visualbell

set path=.,,**

set diffopt+=vertical

set foldcolumn=2
setlocal foldmethod=syntax
set foldnestmax=5
setlocal foldlevelstart=1
let perl_fold=1
"let perl_fold_blocks = 1
"let sh_fold_enabled = 1
"let perl_extended_vars=1
let perl_sync_dist=250
"let perl_fold_anonymous_subs = 1
"let perl_nofold_packages = 1
"let perl_include_pod = 1
"let perl_sub_signatures = 1
"=====================================================================================
"key maps
map <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pageup>  <Esc>:tabprev<CR>
nmap <c-pagedown>  <Esc>:tabnext<CR>

nnoremap <F8> :nohlsearch<CR>
imap <F4> <Esc>:tabnew<CR>
map <F4> <Esc>:tabnew<CR>
noremap <F4> <Esc>:tabnew<CR>
inoremap <F4> <Esc>:tabnew<CR>

imap <F2> <Esc>:Buffers<CR>
map <F2> <Esc>:Buffers<CR>

imap <F3> <Esc>:Files<CR>
map <F3> <Esc>:Files<CR>

imap <C-S> <Esc>:w<CR>
map <C-S> <Esc>:w<CR>
"imap <C-_> <Esc>
"map <C-_> <Esc>
inoremap <C-_> <Esc>
tnoremap <C-_> <Esc>
 noremap <C-_> <Esc>
cnoremap <C-_> <Esc>

nmap <F5> <Esc>:b#<CR>
map <F5> <Esc>:b#<CR>
map <F10> <Esc>:bw<CR>

nmap <Leader>t :TlistOpen<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>p :Files<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"====================
let g:ackprg = "rg --vimgrep"
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

"====================
"let g:ale_fixers = {
"            \   'perl': ['perltidy'],
"            \}
let g:ale_linters = {
            \   'perl': ['perl'],
            \   'lua': ['luac'],
            \   'cpp': ['clangtidy'],
            \}
            "\   'cs': ['omnisharp'],
let g:ale_type_map = {
\ 'perlcritic': {'ES': 'WS', 'E': 'W'},
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" " This is off by default.
"let g:ale_perl_perl_options = ' exec -it kino-back perl -c -Mwarnings -Ilib -I/home/sites/CPB/lib '
let g:ale_perl_perl_options = ' '
"let g:ale_perl_perl_options = ' -c -Mwarnings -Ilib -I/home/centos/CPB/lib '
"let g:ale_perl_perl_executable = 'docker exec -it kino-back  perl'
"let g:ale_perl_perl_executable = 'perl'
let g:ale_perl_perl_executable = 'ppp.sh'
"let g:ale_perl_perl_executable = 'docker'
let g:ale_perl_perlcritic_showrules = 1
"let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
"let g:ale_completion_enabled = 1

let Tlist_Close_On_Select = 1

"====================
"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_timeout = 5
"" Don't autoselect first omnicomplete option, show options even if there is only
"" one (so the preview documentation is accessible). Remove 'preview', 'popup'
"" and 'popuphidden' if you don't want to see any documentation whatsoever.
"" Note that neovim does not support `popuphidden` or `popup` yet: 
"" https://github.com/neovim/neovim/issues/10996
set completeopt=longest,menuone,preview ",popuphidden
"
"" Highlight the completion documentation popup background/foreground the same
"" as
"" " the completion menu itself, for better readability with highlighted
"" " documentation.
""set completepopup=highlight:Pmenu,border:off
set previewheight=5
let g:coc_global_extensions=[ 'coc-omnisharp', 'coc-html', 'coc-json', 'coc-css', 'coc-yaml', 'coc-syntax', 'coc-db', 'coc-git', 'coc-python']"

"====================== COC ============================================
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"========== Coc git =================================
" show chunk diff at current position
"nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
"nmap gc <Plug>(coc-git-commit)

nmap <silent> gs <Plug>(coc-git-chunkinfo)
nmap <silent> g{ <Plug>(coc-git-prevchunk)
nmap <silent> g} <Plug>(coc-git-nextchunk)

command! -nargs=0 CocRename :call CocActionAsync('rename')

let g:db_ui_dotenv_variable_prefix = 'DB_UI_'
let g:db_ui_winwidth = 60

let s:cycle_colors_schemes = "\n".globpath(&rtp, "colors/*.vim")."\n"
let s:cycle_colors_currentfile = ""
let s:cycle_colors_currentname = ""

function! s:CycleColor(direction)
	if exists("g:colors_name") && g:colors_name != s:cycle_colors_currentname
		" The user must have selected a colorscheme manually; try
		" to find it and choose the next one after it
		let nextfile = substitute(s:cycle_colors_schemes, '.*\n\([^\x0A]*[/\\]'.g:colors_name.'\.vim\)\n.*', '\1', '')
		if nextfile == s:cycle_colors_schemes
			let s:cycle_colors_currentfile = ""
		else
			let s:cycle_colors_currentfile = nextfile
		endif
	endif

	if a:direction >= 0
		" Find the current file name, and select the next one.
		" No substitution will take place if the current file is not
		"   found or is the last in the list.
		let nextfile = substitute(s:cycle_colors_schemes, '.*\n'.s:cycle_colors_currentfile.'\n\([^\x0A]\+\)\n.*', '\1', '')
		" If the above worked, there will be no control chars in
		"   nextfile, so this will not substitute; otherwise, this will
		"   choose the first file in the list.
		let nextfile = substitute(nextfile, '\n\+\([^\x0A]\+\)\n.*', '\1', '')
	else
		let nextfile = substitute(s:cycle_colors_schemes, '.*\n\([^\x0A]\+\)\n'.s:cycle_colors_currentfile.'\n.*', '\1', '')
		let nextfile = substitute(nextfile, '.*\n\([^\x0A]\+\)\n\+', '\1', '')
	endif

	if nextfile != s:cycle_colors_schemes
		let clrschm = substitute(nextfile, '^.*[/\\]\([^/\\]\+\)\.vim$', '\1', '')
		" In case the color scheme does not set this variable, empty it so we can tell.
		unlet! g:colors_name
		exec 'colorscheme '.clrschm
		redraw
		if exists("g:colors_name")
			let s:cycle_colors_currentname = g:colors_name
			if clrschm != g:colors_name
				" Let user know colorscheme did not set g:colors_name properly
				echomsg 'colorscheme' clrschm 'set g:colors_name to' g:colors_name
			endif
		else
			let s:cycle_colors_currentname = ""
			echomsg 'colorscheme' clrschm 'did not set g:colors_name'
		endif
		echo s:cycle_colors_currentname.' ('.nextfile.')'
	endif

	let s:cycle_colors_currentfile = nextfile

endfunction

function! s:CycleColorRefresh()
	let s:cycle_colors_schemes = "\n".globpath(&rtp, "colors/*.vim")."\n"
endfunction
command! CycleColorNext :call s:CycleColor(1)
command! CycleColorPrev :call s:CycleColor(-1)
command! CycleColorRefresh :call s:CycleColorRefresh()

"nnoremap <f4> :CycleColorNext<cr>
"nnoremap <f3> :CycleColorPrev<cr>
