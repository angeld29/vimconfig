"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"curl -fLo %LOCALAPPDATA%/nvim/autoload/plug.vim --create-dirs    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim_new/plugins')
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'

Plug 'wellle/targets.vim'
"Plug 'glepnir/galaxyline.nvim'
"Plug 'kyazdani42/nvim-web-devicons' " lua
"Plug 'ryanoasis/vim-devicons' " vimscript
"Plug 'spinks/vim-leader-guide'

"Plug 'haya14busa/vim-asterisk' " z*

"Plug 'vim-scripts/taglist.vim'
Plug 'bkad/camelcasemotion'
Plug 'mhinz/vim-startify'
"Plug 'andrewradev/splitjoin.vim'
" gS gJ

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

Plug 'Konfekt/FastFold'
"Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'lewis6991/gitsigns.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"let g:completion_enable_snippet = 'UltiSnips'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
"nnoremap <leader>tt :NvimTreeToggle<CR>
" nnoremap <leader>tr :NvimTreeRefresh<CR>
" nnoremap <leader>tn :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need the
" Plug 'glepnir/galaxyline.nvim'
call plug#end()

set nocompatible
filetype off
filetype plugin indent on

set iskeyword=@,48-57,_,192-255

set cmdheight=2                       " Make command line two lines high
set mousehide                         " Hide the mouse when typing text
"set mouse=a

set iminsert=0                  " раскладка по умолчанию для ввода - английская
set imsearch=0                  " раскладка по умолчанию для поиска - английская

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
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

set previewheight=5
set updatetime=300
set signcolumn=yes

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

"imap <F3> <Esc>:Files<CR>
"map <F3> <Esc>:Files<CR>

" Find files using Telescope command-line sugar.
nnoremap <space>fb <cmd>Telescope file_browser<cr>
nnoremap <space>ff <cmd>Telescope find_files<cr>
nnoremap <space>fg <cmd>Telescope grep_string<cr>
nnoremap <space>fr <cmd>Telescope live_grep<cr>
nnoremap <space>fh <cmd>Telescope help_tags<cr>
nnoremap <space>bb <cmd>Telescope buffers<cr>
nnoremap <space>bq <cmd>Telescope quickfix<cr>
noremap <space>bt <cmd>Telescope treesitter<cr>
nnoremap <space>lr <cmd>Telescope lsp_reference<cr>
nnoremap <space>ld <cmd>Telescope lsp_definitions<cr>
nnoremap <space>lt <cmd>Telescope tags<cr>
nnoremap <space>bh <cmd>Telescope oldfiles<cr>
"nnoremap <space>gc <cmd>Telescope git_commits<cr>
nnoremap <space>gl <cmd>Telescope git_bcommits<cr>
nnoremap <space>gr <cmd>Telescope git_branches<cr>
nnoremap <space>gb <cmd>Git blame<cr>
nnoremap <space>gg <cmd>Git<cr>
nnoremap <space>gc <cmd>Git commit<cr>
nnoremap <space>gs <cmd>Telescope git_status<cr>
nnoremap <space>gh <cmd>Telescope git_stash<cr>

nmap <Leader>t <cmd>Telescope lsp_document_symbols<cr>
nmap <Leader>r <cmd>Telescope tags<cr>
nmap <Leader>p <cmd>Telescope find_files<cr>

imap <C-S> <Esc>:w<CR>
map <C-S> <Esc>:w<CR>
"imap <C-_> <Esc>
"map <C-_> <Esc>
inoremap <C-_> <Esc>
tnoremap <C-_> <Esc>
 noremap <C-_> <Esc>
cnoremap <C-_> <Esc>

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect,longest,preview
" set completeopt=longest,menuone,preview ",popuphidden

" Avoid showing message extra message when using completion
set shortmess+=c
" -------------------- LSP ---------------------------------
:lua << EOF
  local nvim_lsp = require('lspconfig')

  local on_attach = function(client, bufnr)
    require('completion').on_attach()

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- settings.python.analysis.extraPaths = { '/home/sites/pypo_venv/lib/python3.6/site-packages/' }

    -- Mappings
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        require('lspconfig').util.nvim_multiline_command [[
        :hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        :hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        :hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
            autocmd!
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]]
    end
  end

  local servers = {'pyright'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end
  nvim_lsp['perlpls'].setup {
      on_attach = on_attach,
      cmd = {  "/home/centos/perl5/bin/pls" },
      filetypes = { "perl" },
      settings = {
          perl = {
              cwd = "/home/centos/kino/.www/lib/",
              inc = {
                  "/home/centos/perl5/lib/perl5/",
                  "/home/centos/CPB/lib/",
                  },
              perlcritic = {
                  -- perlcriticrc = "",
                  enabled = true,
              },
              -- perltidyrc = "",
              pls = "/home/centos/perl5/bin/pls",
              syntax = {
                  enabled = true,
                  perl = "/usr/bin/perl", -- Path to the perl binary to use for syntax checking
              },
          }
      }
    }

EOF

" Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" -------------------- LSP ---------------------------------

" Enable tree-sitter for all language modules.
lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.perl = {
  install_info = {
    url = "https://github.com/ganezdragon/tree-sitter-perl",
    files = { "src/parser.c", "src/scanner.cc" },
  },
  filetype = "perl", -- if filetype does not agrees with parser name
  -- used_by = {"pm", "baz"} -- additional filetypes that use this parser
}
require'nvim-treesitter.configs'.setup {
    highlight = {
    enable = true
    },
    indent = {
        enable = true
    },
   textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",

        -- Or you can define your own textobjects like this
        ["iF"] = {
          python = "(function_definition) @function",
          cpp = "(function_definition) @function",
          c = "(function_definition) @function",
          java = "(method_declaration) @function",
        },
      },
    },
  },
}
require('telescope').setup {
    pickers = {
        tags = {
            ctags_file = '../tags',
            },
        },
    }
    extensions = {
        project = {
            base_dirs = {
                '~/CPB',
                { '~/kino' },
                '~/auto',
                '~/mysql57',
                '~/nginx-includes',
                },
            hidden_files = true -- default: false
            },
        },

require'telescope'.load_extension('project')
EOF
