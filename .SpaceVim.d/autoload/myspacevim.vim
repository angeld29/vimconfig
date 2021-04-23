function! myspacevim#before() abort
  " Maps leader to ,
  "let g:mapleader  = ','

  " Puts new splits below to the right
  set splitbelow
  set splitright

  " Indent line config
  augroup indentLine_config
    autocmd!

    "let g:indentLine_char_list = ['┊', '¦']
    let g:indentLine_char_list = [ '¦']
    let g:indentLine_char = '¦'
  augroup END

  " Nord config
  augroup nord_config
    autocmd!

    let g:nord_uniform_diff_background = 1
    let g:nord_italic_comments = 1
    let g:nord_italic = 1
    let g:nord_underline = 1
  augroup END

  " Neomake
  augroup neomake_config
    autocmd!

    let g:neomake_open_list = 0
  augroup END

  " NERDTree config
  augroup nerdtree_config
    autocmd!

    let g:NERDTreeMinimalUI=1
    let g:NERDTreeAutoDeleteBuffer=1
    let g:NERDTreeQuitOnOpen=1
    let g:NERDTreeAutoCenter=0
    let g:NERDTreeShowLineNumbers=1
  augroup END

  " Terminal config
  augroup neovim_terminal
    autocmd!

    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert

    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
  augroup END

  " Clipboard
  set clipboard+=unnamedplus
  set mouse=
  set cmdheight=2                       " Make command line two lines high
  set laststatus=2
  set mousehide                         " Hide the mouse when typing text

  set wildmode=list:lastused,full
  set tags=./tags,tags,../tags
  set inccommand=nosplit "показывает в реальном времени, какие изменения внесёт команда
  set smartcase " поиск с заглавными буквами чувствителен к регистру
  set lazyredraw "Не перерисовывать экран посреди макроса (для повышения производительности).
  set ignorecase
  set smartindent
  set showcmd
  set linebreak
  set keymap=russian-dvorakpr
  set iminsert=0                  " раскладка по умолчанию для ввода - английская
  set imsearch=0                  " раскладка по умолчанию для поиска - английская

  set wrapscan
  set wrap
  set hidden
  set undofile "Сохранение действий, даже если вы закрываете и открываете Vim

  set visualbell
  filetype plugin indent on
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
  
  nnoremap <F8> :nohlsearch<CR>
  imap <F4> <Esc>:tabnew<CR>
  map <F4> <Esc>:tabnew<CR>
  noremap <F4> <Esc>:tabnew<CR>
  inoremap <F4> <Esc>:tabnew<CR>
  map <F10> <Esc>:bw<CR>
  map <F5> <Esc>:Tags<CR>
  let g:fzf_buffers_jump = 1

  " Auto-update files
  set autoread
  au CursorHold * checktime

  " Maps keys to toggle the current word's case while in normal mode
  "call SpaceVim#custom#SPC('noremap', ['t', 'u'], 'viw~e', "toggle the current word's case", 0)

  " Usefull Git mappings mapping
  "call SpaceVim#custom#SPC('noremap', ['g', 'D'], 'Git diff --staged', 'view git staged diff', 1)

  " Custom mapping for creating a new terminal tab
  "call SpaceVim#custom#SPC('noremap', ['w', 't'], 'tabnew +terminal', 'create new terminal tab', 1)
  map <leader>a <ESC>:call fzf#vim#ag(expand('<cword>'))<CR>
endfunction
