"==================General=====================================================
set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=n                 " enable mouse in normal mode
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set number                  " add line numbers
set cc=80                   " set an 80 column border for good coding style
set pyxversion=3
set path=$PWD/**
set t_Co=256
set cursorline
set termguicolors
set updatetime=100
syntax on
" autocmd vimenter *
set relativenumber
set list
" set wildmode=list:full
set wildoptions+=pum
" Disable quote concealing in JSON files
set conceallevel=0
" set completeopt-=preview
" setlocal nobuflisted
"====== fzf.vim ==============================
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*__pycache__,
"=============================================

let g:vim_json_conceal=0
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
"===Identline===========================
" let g:indentLine_setConceal = 2
"
" let g:indentLine_concealcursor = ""
" let g:indentLine_char = '│'
" let g:indentLine_color_term = 4
" let g:indentLine_color_gui = '#3d4148'
"
let g:indent_blankline_show_first_indent_level = v:false
let g:indent_blankline_use_treesitter = v:true
" let g:indent_blankline_enabled = v:true
" let g:indent_blankline_show_current_context = v:true
" let g:indent_blankline_show_end_of_line = v:false
" let g:indent_blankline_strict_tabs = v:false
" let g:indent_blankline_char_highlight_list = ['Error']
" let g:indent_blankline_debug = v:true
"=======================================

let g:mapleader = "\<Space>"
""
let g:XkbSwitchSkipGhKeys = ['gh', 'gH'] " so show help work
let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchAssistNKeymap = 0    " for commands r and f
let g:XkbSwitchAssistSKeymap = 0  " for search lines

let g:python_highlight_all = 0



"==================JSSETTING===================================================
"
" autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
"

"=============Plugins==========================================================
call plug#begin('~/.vim/plugged')
"call plug#begin('~/.config/nvim/plugged'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'thaerkh/vim-workspace'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {
            \'branch': 'release',
            \}
" \'commit': '33cb5ee1b77c6837ff98eda39665fe01122cea2d'
Plug 'mattn/emmet-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'} "theme plugin
Plug 'rakr/vim-one' "theme plugin
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'flazz/vim-colorschemes'
Plug 'gosukiwi/vim-atom-dark'
Plug 'wadackel/vim-dogrun'
" Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'vifm/vifm.vim'
" Plugin for repl
" Symbols viever
Plug 'liuchengxu/vista.vim'
" Floating terminal
Plug 'voldikss/vim-floaterm'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) }  }
Plug 'liuchengxu/vim-which-key'
" debugger
" Plug 'puremourning/vimspector'
" good search
Plug 'dyng/ctrlsf.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary', 'tag': 'v0.29' }
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary'  }
Plug 'jiangmiao/auto-pairs'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
" vscode like cargo crates info CTRL -x  -u for completion
Plug 'mhinz/vim-crates'
" Plug 'romgrk/nvim-treesitter-context'
"Plug 'nvim-treesitter/nvim-treesitter', {'commit': '11ede1c0d2ab30ca1b637e31892a12e042a73965'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'luochen1990/rainbow'
Plug 'lyokha/vim-xkbswitch'
" Plug 'ashisha/image.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'mhinz/vim-startify'
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
Plug 'folke/todo-comments.nvim'
" activate after issues will be resolved
Plug 'kyazdani42/nvim-tree.lua'
" wait for visual indent guides
Plug 'glepnir/galaxyline.nvim'
Plug 'tpope/vim-repeat'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'editorconfig/editorconfig-vim'
Plug 'Th3Whit3Wolf/one-nvim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'fannheyward/telescope-coc.nvim'

Plug 'chrisbra/csv.vim'
Plug 'skanehira/preview-markdown.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'fatih/vim-go'
" telescope replacement but very immature
Plug 'camspiers/snap'

Plug 'folke/zen-mode.nvim'
" for breadcrumbs in evilline
Plug 'SmiteshP/nvim-gps'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'windwp/nvim-ts-autotag'
" Plug 'p00f/nvim-ts-rainbow'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
" works in pair lua fzf
Plug 'ibhagwan/fzf-lua'
" Plug 'ibhagwan/fzf-lua', {'commit': '510aca8658a954e152bd5e97cdad4fd6b09b7ea7'}
Plug 'vijaymarupudi/nvim-fzf'

Plug 'itchyny/calendar.vim'
Plug 'sindrets/diffview.nvim'
" debugger
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

" targets
" to have cib in the nearest object, hence target
Plug 'wellle/targets.vim'

" pair of floating cmdline very immature
" Plug 'MunifTanjim/nui.nvim'
" Plug 'VonHeikemen/fine-cmdline.nvim'

" Initialize plugin system
call plug#end()


"=====================VIM_GO==================================================
function! s:gorun(...) abort
  let l:cmd = printf('go run %s', expand('%'))
  if !empty(a:000)
    let l:cmd .= ' ' . join(map(copy(a:000), 'shellescape(v:val)'), ' ')
    echo l:cmd
  endif
  exec '!' l:cmd
endfunction

command! -nargs=* -buffer GoRun2 call s:gorun(<f-args>)

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []
let g:go_def_mapping_enabled = 0
let g:go_gopls_enabled = 0
" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

let g:go_highlight_types = 0
let g:go_highlight_fields = 0
let g:go_highlight_functions = 0
let g:go_highlight_function_calls = 0
let g:go_highlight_operators = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_build_constraints = 0
let g:go_highlight_generate_tags = 0

"===========================NVIM_TREE==========================================
" let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache', '__pycache__', '.vscode', '.mypy_cache', '.idea']
let g:nvim_tree_icons = {'default': '', 'makefile': ''}
lua << EOF
 require('nvim-tree').setup({
     tree_follow = true,
     auto_close = true,
     update_cwd = true,
     tree_respect_buf_cwd = true,
     filters = {
         custom = {
             '.git', 'node_modules', '.cache', '__pycache__', '.vscode', '.mypy_cache', '.idea'
         }
     },
     view = {
        width = 50,
        height = 50,
        side = 'left',
        auto_resize = true,
     },
     follow_update_path = true,
       update_focused_file = {
         enable      = false,
         update_cwd  = true,
         ignore_list = {}
   },
 })
EOF
" let g:nvim_tree_follow = 1
" let g:nvim_tree_auto_close = 1
" let g:nvim_tree_update_cwd = 1
" let g:nvim_tree_respect_buf_cwd = 1
" let g:nvim_tree_follow_update_path = 1

"==================================CMDLINE================================
" lua << EOF

" fineline = require('fine-cmdline')
" fn = fineline.fn

" require('fine-cmdline').setup({
"   cmdline = {
"     enable_keymaps = true
"   },
"   popup = {
"     position = {
"       row = '30%',
"       col = '50%',
"     },
"     size = {
"       width = '60%',
"       height = 2
"     },
"     border = {
"       style = 'rounded',
"       highlight = 'TelescopeBorder',
"     },
"     win_options = {
"       winhighlight = 'Normal:Normal',
"     },
"     hooks = {
"         set_keymaps = function(imap, feedkeys)
"           imap('<Esc>', fn.close)
"           imap('<C-c>', fn.close)
"           imap('<Tab>', fn.complete_or_next_item)

"           imap('<Up>', fn.up_history)
"           imap('<Down>', fn.down_history)
"         end
"       },
"   },
" })
" EOF
"========================ChadTree============================================
let g:chadtree_settings = { "ignore.path_glob": ['*node_modules', '*__pycache__', '*.git$', '*.vscode', '*.mypy_cache', '*.idea'] }
"

"==================================Autotag && AutoPair================================
lua << EOF
require('nvim-ts-autotag').setup()
EOF
"==============================dap-ui===========================================
lua << EOF
require('dapui').setup()
EOF

lua << EOF
require('nvim-dap-virtual-text').setup()
EOF
"==================================Debug================================
luafile $HOME/.config/nvim/lua/_dap.lua

lua <<EOF
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🔵', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

-- mappings

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>dt', ':lua require"dap".toggle_breakpoint()<CR>')
map('n', '<leader>dT', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map('n', '<leader>dO', ':lua require"dap".step_out()<CR>')
map('n', '<leader>di', ':lua require"dap".step_into()<CR>')
map('n', '<leader>do', ':lua require"dap".step_over()<CR>')
map('n', '<leader>dc', ':lua require"dap".continue()<CR>')
map('n', '<leader>dk', ':lua require"dap".up()<CR>')
map('n', '<leader>dj', ':lua require"dap".down()<CR>')
map('n', '<leader>dx', ':lua require"dap".disconnect({ terminateDebuggee = true });require"dap".close();require"dap".repl.close()<CR>')
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
map('n', '<leader>dh', ':lua require"dap.ui.variables".hover()<CR>')
map('n', '<leader>dv', ':lua require"dap.ui.variables".visual_hover()<CR>')
map('n', '<leader>d?', ':lua require"dap.ui.variables".scopes()<CR>')
map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>')
map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>')
map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>')
map('n', '<leader>dH', ':lua require"dap.ui.widgets".hover()<CR>')
map('n', '<leader>dp', ':lua require"debuggers".prom_py_attach()<CR>')
map('n', '<leader>du', ':lua require"dapui".toggle()<CR>')
map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')

EOF

"===========================Snap===============================================
lua <<EOF
local snap = require'snap'

-- findfiles
 snap.register.map({'n'}, {'<LEADER>-'}, function ()
   snap.run {
     producer = snap.get'consumer.fzf'(snap.get'producer.ripgrep.file'),
     select = snap.get'select.file'.select,
     multiselect = snap.get'select.file'.multiselect,
     views = {snap.get'preview.file'},
     reverse = true,
    layout = snap.get"layout".top,
   }
 end)

 --ripgrep
 snap.register.map({'n'}, {'<LEADER>='}, function ()
   snap.run {
     prompt = 'SnapGrep',
     producer = snap.get'producer.ripgrep.vimgrep',
     select = snap.get'select.vimgrep'.select,
     multiselect = snap.get'select.vimgrep'.multiselect,
     views = {snap.get'preview.vimgrep'},
     reverse = true,
    layout = snap.get"layout".top,
   }
 end)
EOF

"==================todo-comments================================================
lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

"===========================lua-term===========================================
"
lua <<EOF
require"toggleterm".setup{
  size = 15,
  open_mapping = [[<c-space>]],
  shade_filetypes = {},
  shade_terminals = true,
  persist_size = true,
  direction = 'horizontal',
  insert_mappings = true,
  start_in_insert = true,
}
local Terminal  = require('toggleterm.terminal').Terminal
local ptpython = Terminal:new({

  cmd = "ptpython",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
})

function _ptpython_toggle()
  ptpython:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua _ptpython_toggle()<CR>", {noremap = true, silent = true})

local gitDiff = Terminal:new({
  cmd = "git diff",
  direction = "float",
  dir = "git_dir",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  -- function to run on closing the terminal
})

function _gitDiff_toggle()
  gitDiff:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _gitDiff_toggle()<CR>", {noremap = true, silent = true})
EOF
"
"=========================EDITORCONFIG=========================================
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*', 'term://.*']
"

"========================TELESCOPE=============================================
luafile $HOME/.config/nvim/lua/telescope2.lua

"========================FZF_LUA=============================================
luafile $HOME/.config/nvim/lua/_fzf-lua.lua

"========================MARKDOWN_PREVIEW======================================
let g:preview_markdown_parser='glow'
let g:preview_markdown_vertical=1
let g:preview_markdown_auto_update=1
"
""=====================INDENT===================================================
"
" lua <<EOF
" require('indent_guides').options = {
"     indent_levels = 30;
"     indent_guide_size = 1;
"     indent_start_level = 2;
"     indent_space_guides = true;
"     indent_tab_guides = false;
"     indent_pretty_guides = false;
"     indent_soft_pattern = '\\s';
"     exclude_filetypes = {'help','dashboard','terminal'};
" }
" EOF
"
"
"========================VIM_BOOKMARK==========================================
let g:bookmark_no_default_key_mappings = 1

"==================Startify===================================================
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
          \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'v': '~/vim_keys.md'},
            \ { 't': '~/.tmux.conf'},
            \ { 'y': '~/.config/kitty/kitty.conf' },
            \ { 'x': '~/.xmonad/xmonad.hs' },
            \ ]


let g:startify_session_delete_buffers = 1

let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 0
let g:startify_enable_special = 0

let g:startify_custom_header = [
            \' _   _                     _',
            \'| \ | |  ___   ___ __   __(_) _ __ ___',
            \'|  \| | / _ \ / _ \\ \ / /| || `_ ` _ \',
            \'| |\  ||  __/| (_) |\ V / | || | | | | |',
            \'|_| \_| \___| \___/  \_/  |_||_| |_| |_|',
        \]
"==================BARBAR======================================================
let bufferline = {}

" Enable/disable animations
let bufferline.animation = v:false

" Enable/disable icons
" if set to "numbers", will show buffer index in the tabline
let bufferline.icons = v:true

" Enable/disable close button
let bufferline.closable = v:false

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP'

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 1
"
"
"
"========================AutoClose Hidden=======================================
" doesn't work
" augroup close_hidden
"     autocmd!
"     autocmd BufReadPost list:///* set bufhidden=delete
"     autocmd BufReadPost *--normal* set bufhidden=delete
" augroup END
"===========================DisableAirlineOnTerm==============================
" this doesnt work cause airline doesnt have any setting for it
" but i'll keep this for future reference
" =====================
" let T = ''
" augroup term_enter
"   au!
"   au TermEnter,TermOpen * if &buftype ==# 'terminal' |   set ft=T    | endif
" augroup END
" do not list terminal in buffers
" hi BlackBg guibg=white
augroup custom_term
    autocmd!
    autocmd TermOpen,TermEnter *  if &buftype ==# 'terminal' | setlocal nobuflisted
augroup END

" augroup custom_exit
"     autocmd!
"     autocmd TermLeave,TermClose *  if &buftype ==# 'terminal' | setlocal cmdheight=2
" augroup END

" augroup custom_vista
"     autocmd!
"      autocmd WinEnter,WinLeave __vista__ setlocal nobuflisted
" augroup END
"
"====================AutorResize on tiling wm=================================
autocmd VimResized * wincmd =
"


"=================Color And Scheme ============================================
let g:rainbow_active = 1
let g:rainbow_conf = {
\            'guifgs': ['#ABB2BF','#E5C07B', '#61AFEF', '#C678DD', '#56BC62', '#E06C75'],
\}

" let g:airline_theme='onedark'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 0

let g:airline#extensions#tabline#formatter = 'jsformatter' " default, jsformatter, unique_tail
let g:airline_powerline_fonts = 1
let g:airline#extensions#xkblayout#enabled = 0

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
" endif
set background=dark
" set background=light " for the light version
colorscheme onedark

"=======================GalaxyLine===========================================
luafile $HOME/.config/nvim/lua/evilline.lua
"========================FIX_TELESCOPE_ICONS=================================
" icons highlight should be called after setting colorscheme
" lua <<EOF
" require 'nvim-web-devicons'.setup({default = true})
" EOF

" lua << EOF
" function _G.webDevIcons(path)
"   local filename = vim.fn.fnamemodify(path, ':t')
"   local extension = vim.fn.fnamemodify(path, ':e')
"   return require'nvim-web-devicons'.get_icon(filename, extension, { default = true })
" end
" EOF

""==========================Colorizer=========================================
" lua colorizer for hex and other colors
lua <<EOF
require 'colorizer'.setup()
EOF
"========================GPS===================================================
" lua colorizer for hex and other colors
lua <<EOF
require("nvim-gps").setup({
	icons = {
		["class-name"] = ' ',      -- Classes and class-like objects
		["function-name"] = ' ',   -- Functions
		["method-name"] = ' '      -- Methods (functions inside class-like objects)
	},
	languages = {                    -- You can disable any language individually here
		["c"] = true,
		["cpp"] = true,
		["go"] = true,
		["java"] = true,
		["javascript"] = true,
		["lua"] = true,
		["python"] = true,
		["rust"] = true,
	},
	separator = ' > ',
})
EOF
"=======================NERDTREE==============================================
let g:NERDTreeIgnore = ['^node_modules$', '^__pycache__$', '^.git$', '^.vscode', '^.mypy_cache']
let g:NERDTreeHighlightCursorline = 0 " making nerdtree snappier
let g:NERDTreeLimitedSyntax = 1 " limiting file color extensions
let NERDTreeHighlightCursorline = 0

"==============================================================================
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

"=======================CLAP===================================================
" \ 'display': {'ctermbg': '235', 'guibg': '#272d3D' },
" \ 'preview': {'ctermbg': '235', 'guibg': '#272d3D' }
" \ 'display': {'ctermbg': '235', 'guibg': '#282C34' },
" \ 'preview': {'ctermbg': '235', 'guibg': '#282C34' }
let g:clap_theme = {
            \ 'display': {'ctermbg': '239', 'guibg': '#282c34 ', 'guifg': '#f8f8f2', 'ctermfg': '123' },
            \ 'preview': {'ctermbg': '239', 'guibg': '#282c34 ', 'guifg': '#f8f8f2', 'ctermfg': '123' }
            \}
"
" color= #282C34"
" guifg=#ABB2BF guibg=#282C34

let g:clap_preview_size = 20
let g:clap_enable_background_shadow = 0
let g:clap_popup_border = 'single'
let g:clap_insert_mode_only = 1
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_grep_opts = '--vimgrep --hidden -g "!node_modules/" -g "!idea" -g "!.vscode" -g "!venv" -g "!.mypy_cache" -g "!build" -g "!dist"  -g "!__pycache__" -g "!tags" -g "!*.git" -g "!package-lock.json" -g "!.environ" -g "!*pot"'

let g:clap_enable_debug = 1
" let g:clap_provider_project_tags= {
"    \ 'id': 'project_tags',
"    \ 'source': 'rg --vimgrep -g "*tags"',
"    \ 'sink': 'e',
"    \ }
let clap_provider_generated_tags = {
    \ 'id': 'project_tags',
    \ 'source': {-> Tags__source()},
    \ 'sink': {line -> Tags__sink(line)},
    \ }

let g:clap_provider_dotfiles = {
      \ 'source': ['~/.config/nvim/init.vim', '~/vim_keys.md', '~/.zshrc', '~/.tmux.conf', '~/.config/nvim/lua/evilline.lua'],
      \ 'sink': 'e',
      \ }


function! Tags__source ()
  return flatten(map(tagfiles(), {_, file -> filter(readfile(file), 'stridx(v:val, "!_TAG") != 0')}))
endfunc

function! Tags__sink (line)
  " Let vim handle the tag
  execute 'tag' split(a:line, '\t')[0]
endfunc



"" ==============================Cargo==========================================
if has('nvim')
  autocmd BufRead Cargo.toml call crates#toggle()
endif
"==========================CODI================================================
"" Change the color
highlight CodiVirtualText guifg=cyan

let g:codi#virtual_text_prefix = "❯ "
"
let g:codi#aliases = {
                   \ 'javascript.jsx': 'javascript',
                   \ }
"=====================VimBeGood================================================
let g:vim_be_good_floating = 1

"=====================AUTOPAIR================================================
let g:AutoPairsMapSpace = 0
"========================VIFM===================================================
let s:vifm_home = $HOME."/.config/vifm"
"==============================================================================
" autocmd BufRead,BufNewFile   *.ts,*.js,*.jsx,*.tsx,*.css setlocal ts=2 sw=2
"===========================SpellCheck==========================================
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

"
"==========================AutoSourceVimFiles=================================
augroup vimscript_source
  au!
  au BufWritePost,FileWritePost *.vim,~/.vimrc,~/.vim/vimrc source <afile>
augroup END

"========================FOLD==================================================
" augroup remember_folds
"   autocmd!
"   au BufWinLeave ?* silent! mkview 1
"   au BufWinEnter ?* silent! loadview 1
" augroup END
augroup AutoSaveFolds | autocmd!
  autocmd BufWinLeave,BufLeave,BufWritePost *.* nested silent! mkview!
  autocmd BufWinEnter *.* silent! loadview
augroup END
"========================DisableCocOnExit==================================================
autocmd VimLeavePre ?* :call coc#rpc#kill()
augroup disable_coc
  autocmd!
  au VimLeave ?* CocDisable
augroup END

"=================EnableCocOnFiles=============================================

" do not load coc on startup so it won't drag with firenvim
" let g:coc_start_at_startup = 1
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
""========================Vista_Tag=============================================
let g:vista_default_executive = 'coc'
" let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']

" let g:vista_executive_for = {
"   \ 'python': '',
"   \ 'php': 'vim_lsp',
"   \ }

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

let g:vista_fzf_preview = ['right:50%']

"==========================Trim_WHITE_SPACE====================================
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
"==============================================================================


"=====================WHICH_KEY================================================
" Create map to add keys to
let g:which_key_map =  {} " Create map to add keys to
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
set timeoutlen=500
" which-key mappings
" let g:which_key_map['`'] =  'toggle terminal'
"
let g:which_key_map['b'] = {
      \ 'name' : '+buffer' ,
      \ 's' : [':w '     , 'save-buffer']          ,
      \ 'N' : [':enew '     , 'new-scratch-buffer']          ,
      \ 'o' : [':BufferCloseAllButCurrent'     , 'delete other buffers']          ,
      \ 'h' : [':BufferCloseBuffersLeft'     , 'delete left buffers']          ,
      \ 'l' : [':BufferCloseBuffersRight'     , 'delete right buffers']          ,
      \ }

let g:which_key_map['d'] = {
      \ 'name' : '+debugger' ,
      \ }

let g:which_key_map['o'] = {
      \ 'name' : '+open' ,
      \ }

let g:which_key_map['r'] = {
      \ 'name' : '+run anything' ,
      \ 'r' : [':RustRun'     , 'RustRun']          ,
      \ 'g' : [':GoRun2'     , 'GoRun']          ,
      \ }

let g:which_key_map['j'] = {
      \ 'name' : '+jump' ,
      \ }

let g:which_key_map['f'] = {
      \ 'name' : '+files' ,
      \ 's' : [':Clap tags'                        , 'file symbols'],
      \ '.' : [':Telescope file_browser cwd=%:p:h'                        , 'files in dir'],
      \ 'd' : [':Telescope file_browser cwd=~/.config/'                        , 'dot'],
      \ 'v' : [':Telescope file_browser cwd=~/.config/nvim'                        , 'vim'],
      \ 'f' : [':Telescope find_files', 'find files'],
      \ }
let g:which_key_map.f.y = 'copy link to file line'
let g:which_key_map.S = 'SpellCheck'

let g:which_key_map['p'] = {
      \ 'name' : '+project' ,
      \ 's' : [':CocList --interactive symbols'     , 'symbols']          ,
      \ 't' : [':NvimTreeToggle'     , 'toggle tree']          ,
      \ 'f' : [':NvimTreeFindFile'     , 'find file']          ,
      \ }

let g:which_key_map['m'] = {
      \ 'name' : '+marks' ,
      \ 'j' : ['<Plug>BookmarkNext', 'mark next']          ,
      \ 'k' : ['<Plug>BookmarkPrev', 'mark previous']          ,
      \ 't' : ['<Plug>BookmarkToggle', 'mark toggle']          ,
      \ 'a' : ['<Plug>BookmarkAnnotate', 'mark annotate']          ,
      \ 'c' : ['<Plug>BookmarkClear', 'clear for file']          ,
      \ 'd' : [':CocCommand bookmark.clearForAllFiles', 'clear all']          ,
      \ 'l' : ['<Plug>BookmarkShowAll', 'marks']          ,
      \ 'm' : [':Telescope vim_bookmarks all', 'marks list']          ,
      \ 'f' : [':Telescope vim_bookmarks current_file', 'marks list']          ,
      \ }

let g:which_key_map['a'] = {
      \ 'name' : '+action' ,
      \ 'w' : [':call TrimWhitespace()'     , 'trim-whitespace']          ,
      \ 'n' : [':enew'     , 'new buffer']          ,
      \ 's' : [':source %'     , 'source current file']          ,
      \ 'g' : [':VimBeGood', 'Vim game']          ,
      \ 'c' : [':Clap', 'Search Framework']          ,
      \ 'i' : [':PlugInstall', 'PlugInstall']          ,
      \ 'l' : [':PlugClean', 'PlugClean']          ,
      \ 'u' : [':PlugUpdate', 'PlugUpdate']          ,
      \ 'p' : [':silent ! playerctl  play-pause', 'Music play/pause']          ,
      \ 'j' : [':silent ! playerctl  previous', 'Music previous']          ,
      \ 'k' : [':silent ! playerctl  next', 'Music next']          ,
      \ 'h' : [':write | edit | TSBufEnable highlight', 'Fix Treesitter highlight']          ,
      \ }

let g:which_key_map['c'] = {
      \ 'name' : '+coc' ,
      \ 'R' : [':CocRestart', 'restart coc']          ,
      \ 'D' : [':CocDisable', 'disable coc']          ,
      \ 'm' : [':CocList marketplace', 'marketplace']          ,
      \ }

let g:which_key_map['q'] = {
      \ 'name' : '+quit or quickfix' ,
      \ 'q' : [':q!'     , 'force-quit-save']          ,
      \ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'o' : ['<C-W>o'     , 'delete-other-windows']          ,
      \ 'r' : ['<C-W>r'     , 'reverse-windows']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '/' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ ',' : ['<C-W>10<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ '.' : ['<C-W>10>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ 'm' : [':ZenMode'     , 'maximize window']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':Telescope git_branches'           , 'branches'],
      \ 'c' : [':Git commit '                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gvdiffsplit!'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Git'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'p' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':Gread'                            , 'revert file'],
      \ 'f' : [':DiffviewFileHistory'               , 'file history'],
      \ 's' : [':Git switch -'                     , 'switch'],
      \ 'o' : [':Git push origin HEAD'             , 'push origin'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':Telescope git_commits'                               , 'view commits'],
      \ 'V' : [':Telescope git_bcommits'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ 'l' : [':CocLocalConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'F' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'f' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'L' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'O' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'o' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

let g:which_key_map.x = {
      \ 'name' : '+lsp action' ,
      \}

" error
let g:which_key_map.e = {
      \ 'name' : '+errors' ,
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'j' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'k' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'f' : [":CocCommand eslint.executeAutofix", 'eslint fixAll'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'l' : [':Telescope coc workspace_diagnostics'                , 'diagnostics'],
      \ }

" floaterm
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':ToggleTerm direction=float'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'r' : [':FloatermNew RG'                               , 'RG'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'v' : [':FloatermNew vifm'                              , 'vifm'],
      \ 'b' : [':FloatermNew broot -s'                          , 'broot'],
      \ 't' : [':ToggleTerm'                    , 'term toggle'],
      \ 'a' : [':ToggleTermOpenAll'                    , 'term open all'],
      \ 'c' : [':ToggleTermCloseAll'                    , 'term hide all'],
      \ }

" s is for search
"" \ 'p' : [':RG'           , 'text Rg'],
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : ['<Plug>CtrlSFPrompt'     , 'fuzzy find'],
      \ '.' : [':FzfLua grep_cword'     , 'word under fzf'],
      \ 'w' : ['<Plug>CtrlSFCCwordExec'     , 'word under CtrlsF'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':FzfLua grep'           , 'clap search'],
      \ 'b' : [':Telescope current_buffer_fuzzy_find '       , 'current buffer'],
      \ 'B' : [':Telescope buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':FzfLua files'        , 'files'],
      \ 'g' : [':FzfLua git_status'       , 'git files'],
      \ 'G' : [':Telescope git_status'      , 'modified git files'],
      \ 'h' : [':FzfLua search_history'      , 'file history'],
      \ 'p' : [':FzfLua live_grep_glob'      , 'search project'],
      \ 'H' : [':FzfLua command_history'     , 'command history'],
      \ 's' : [':FzfLua lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'P' : [':Helptags'     , 'help tags'] ,
      \ 't' : [':Telescope tags'         , 'project tags'],
      \ 'l' : [':Colors'       , 'color schemes'],
      \ 'T' : [':FzfLua tags'        , 'buffer tags'],
      \ 'y' : [':FzfLua filetypes '    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

call which_key#register('<Space>', "g:which_key_map")
"==============================NVIM_TREE================================================

"========================TREE_SITTER_HIGHLIGHT===============================
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c" },  -- list of language that will be disabled
  },
  context_commentstring = {
      enable = true
  }
--  rainbow = {
--   enable = true,
--    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
--    max_file_lines = nil, -- Do not enable for files with more than n lines, int
--    colors = {
--        '#ABB2BF','#E5C07B', '#61AFEF', '#C678DD', '#56BC62', '#E06C75'
--        }, -- table of hex strings
--  }
}
EOF
""=====================FIRENVIM================================================
if exists('g:started_by_firenvim')
  set laststatus=0
else
  set laststatus=2

endif
"=============================================================================


"======================COC_LSP================================================"
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr :Telescope coc references<CR>
" nmap <silent> gr <Plug>CtrlSFCCwordExec

" Use gh to show documentation in preview window
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> gh :<C-u>call <SID>show_documentation()<CR>
" Highlight symbol under cursor on CursorHold
" augroup coc_highlight
"     autocmd!
"     autocmd CursorHold * call CocActionAsync('highlight')
" augroup end

" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"


" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>cc  :<C-u>CocList commands<cr>
nnoremap <silent> <space>cl  :CocList commands eslint.executeAutoFix<cr>
" Find symbol of current document
nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
" Search workspace symbols
" nnoremap <silent> <space>js  :<C-u>CocList -I symbols<cr> doesnt work really
" Do default action for next item.
nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>cp  :<C-u>CocListResume<CR>

" Highlight groups
 hi CocErrorSign ctermfg=9  guifg=#c4384b


"==============================CTRLSF==========================================
let g:ctrlsf_default_view_mode = 'normal'
let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }"
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_extra_backend_args = {
    \ 'rg': "-g '!package-lock.json' -g '!node_modules' -g '!dist' -g '!.environ' -g '!*pot' -g '!build' --hidden"
    \ }
"
"==============================================================================

"==============================FZF=============================================
let g:fzf_preview_lines_command = 'cat'
".fzf.vim
" in floating centered mode
let g:fzf_layout = { 'window': {
             \ 'width': 0.9,
             \ 'height': 0.7,
             \ 'highlight': 'Comment',
             \ 'rounded': v:false } }

"Colors
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

"======================Keybindings=============================================
:imap jk <Esc>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
" nmap <leader>tf :NERDTreeFind<CR
" nmap <leader>pt :NERDTreeToggle<CR>
" map <leader>pf :NERDTreeFind<cr>
" buffers for airline
" nmap <leader>bp :bp<CR>
" nmap <leader>bn :bn<CR>
" nmap <leader>bad :%bd<CR>
"buffers for airline
"
"=========BarBar===============================================================
" Magic buffer-picking mode
nnoremap <silent> <leader>j :BufferPick<CR>
" Sort automatically by...
" nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
" nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>

nmap <silent> gb :BufferPrevious<CR>
nmap <silent> gB :BufferNext<CR>
nnoremap <silent>    <leader>bn :BufferNext<CR>
nmap <silent>    <leader>bp :BufferPrevious<CR>
nnoremap <silent>    <leader>bn :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>


nmap <silent>    <leader>1 :BufferGoto 1<CR>
nmap <silent>    <leader>2 :BufferGoto 2<CR>
nmap <silent>    <leader>3 :BufferGoto 3<CR>
nmap <silent>    <leader>4 :BufferGoto 4<CR>
nmap <silent>    <leader>5 :BufferGoto 5<CR>
nmap <silent>    <leader>6 :BufferGoto 6<CR>
nmap <silent>    <leader>7 :BufferGoto 7<CR>
nmap <silent>    <leader>8 :BufferGoto 8<CR>
nmap <silent>    <leader>9 :BufferLast<CR>
" Close buffer
nmap <silent>   <leader>bd :BufferClose<CR>
"==============================================================================

" nmap <silent>gt :bn<CR>
" nmap <silent>Gt :bp<CR>
" nmap <leader>bd :bd<CR>
" for git merge diff manipulation
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
" spellcheck
" nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>
nnoremap <silent> <Leader>S :CocCommand cSpell.toggleEnableSpellChecker<CR>

nmap <leader>wqa :wqa<CR>
nmap <leader>bb :Telescope buffers<CR>
" nmap <leader>ff :FzfLua files<CR>
nmap <leader>o :Clap dotfiles<CR>
nmap <leader>x <Plug>(coc-codeaction)<Cr>
nmap <leader>gs :Telescope git_status<Cr>
nmap<silent> <leader>/ :FzfLua live_grep_glob<Cr>
nmap <leader>aC :Commands<Cr>
nmap <leader>sl :Lines<Cr>
nmap <leader>fr :Telescope oldfiles<Cr>
nmap <leader>cs :Clap colors<Cr>
" nmap <leader>sp :lua require('fzf-lua').live_grep({cmd = 'vimrg'})<Cr>
" old variant
" noremap <leader>bd :bp<cr>:bd #<cr>
" remaping global copyPaste to leader like mappings
nmap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>v "+p
vnoremap <leader>v "+p
" emacs bindings
map! <C-E> <esc>A
map! <C-A> <esc>0i
"remaping shortcut for popup suggestions

inoremap <expr><C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
inoremap <expr><C-K> pumvisible() ? "\<C-p>" : "\<C-K>"
cnoremap <expr><C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
cnoremap <expr><C-K> pumvisible() ? "\<C-p>" : "\<C-K>"
" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
nmap <leader><space> :

" nmap <leader><space> <cmd>lua require('fine-cmdline').open()<CR>
" this is how you use command an envoke it
nnoremap <leader>n :noh<Cr>
vmap <C-/>f <Plug>CtrlSFVwordExec
" use Esc to escape from neovim term
tnoremap <Esc> <C-\><C-n><CR>

nnoremap <silent> <leader>fy :let @+=expand("%") . ':' . line(".")<CR>

