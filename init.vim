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
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set pyxversion=3
set path=$PWD/**
set t_Co=256
set cursorline
syntax on
autocmd vimenter *
set relativenumber
set list
" Disable quote concealing in JSON files
set conceallevel=0
let g:vim_json_conceal=0
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""
let g:indentLine_char = '│'
let g:indentLine_color_term = 4
" let g:indentLine_color_gui = '#2d3135'
" let g:indentLine_color_gui = '#52565c'
let g:indentLine_color_gui = '#3d4148'

let g:mapleader = "\<Space>"

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
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'thaerkh/vim-workspace'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
"python stuff
" Plug 'vim-python/python-syntax'  " main highlight
Plug 'davidhalter/jedi'
Plug 'ekalinin/dockerfile.vim'
Plug 'egalpin/apt-vim'
Plug 'mattn/emmet-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'} "theme plugin
Plug 'rakr/vim-one' "theme plugin
Plug 'vim-airline/vim-airline' "plugin toolbar
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar' " outline tags
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " works with devicons
" Plug 'HerringtonDarkholme/yats.vim' "  one for TS Syntax
" ===========================
" end of ts
Plug 'jparise/vim-graphql'
Plug 'flazz/vim-colorschemes'
Plug 'gosukiwi/vim-atom-dark'
Plug 'wadackel/vim-dogrun'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'vifm/vifm.vim'
" Plugin for repl
" Plug 'metakirby5/codi.vim' " enable it when virtual text support landed
Plug 'ChristianChiarulli/codi.vim' " disable it to original codi
" Symbols viever
Plug 'liuchengxu/vista.vim'
" Floating terminal
Plug 'voldikss/vim-floaterm'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" issue on github cause doesnt work
Plug 'liuchengxu/vim-which-key'
" debugger
Plug 'puremourning/vimspector'
" good search
Plug 'dyng/ctrlsf.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary', 'tag': 'v0.20' }
Plug 'jiangmiao/auto-pairs'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'alvan/vim-closetag'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
" vscode like cargo crates info CTRL -x  -u for completion
Plug 'mhinz/vim-crates'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'luochen1990/rainbow'
" best plugin for ua layout
Plug 'lyokha/vim-xkbswitch'
Plug 'shime/vim-livedown'

" replace airline tab with this when it will fix some issues https://github.com/romgrk/barbar.nvim/issues/30
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'

" Initialize plugin system
call plug#end()


"" set filetypes as typescript.tsx
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

"highlight tsx, jsx"
" dark red
"=======================XKB-LAYOUT=============================================
let g:XkbSwitchEnabled = 1
"
"=======================CLAP===================================================
" \ 'display': {'ctermbg': '235', 'guibg': '#272d3D' },
" \ 'preview': {'ctermbg': '235', 'guibg': '#272d3D' }
" \ 'display': {'ctermbg': '235', 'guibg': '#282C34' },
" \ 'preview': {'ctermbg': '235', 'guibg': '#282C34' }
let g:clap_theme = { 
            \ 'display': {'ctermbg': '239', 'guibg': '#2d3135', 'guifg': '#f8f8f2', 'ctermfg': '123' },
            \ 'preview': {'ctermbg': '239', 'guibg': '#2d3135', 'guifg': '#f8f8f2', 'ctermfg': '123' }
            \}
"
" color= #282C34"
" guifg=#ABB2BF guibg=#282C34
let g:clap_enable_background_shadow = 0
let g:clap_insert_mode_only = 1
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
autocmd BufRead,BufNewFile   *.ts,*.js,*.jsx,*.tsx,*.css setlocal ts=2 sw=2
"=================Color And Scheme ============================================
let g:rainbow_active = 1
let g:rainbow_conf = {
\            'guifgs': ['#ABB2BF','#E5C07B', '#61AFEF', '#C678DD', '#56BC62', '#E06C75'],
\}

" let g:airline_theme='onedark'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#xkblayout#enabled = 0
let g:airline#extensions#tabline#formatter = 'jsformatter' " default, jsformatter, unique_tail
let g:airline_powerline_fonts = 1
 " augroup rainbow_dev
"     autocmd!
"     autocmd FileType lisp,clojure,scheme,typescript,typescriptreact,python,html,javascript,javascriptreact,css RainbowParentheses
" augroup END
" let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]
" --- end about color
"
"
"
"
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
  if (has("termguicolors"))
    set termguicolors
  endif
" endif
set background=dark " for the dark version
" set background=light " for the light version
" colorscheme materialbox
colorscheme onedark
"=======================NERDTREE==============================================
let g:NERDTreeIgnore = ['^node_modules$', '^__pycache__$', '^.git$', '^.vscode', '^.mypy_cache']
let g:NERDTreeHighlightCursorline = 0 " making nerdtree snappier
let g:NERDTreeLimitedSyntax = 1 " limiting file color extensions
let NERDTreeHighlightCursorline = 0
"===========================IMPORT_COST=======================================
" augroup import_cost_auto_run
"   autocmd!
"   autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
"   autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
"   autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
" augroup END

"========================FOLD==================================================
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END
"========================DisableCocOnExit==================================================
augroup disable_coc
  autocmd!
  autocmd VimLeave * CocDisable
augroup END
""========================Vista_Tag=============================================
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
"========================Html_CLOSETAG==========================================
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<F4>>'
"========================Auto_Close_Everything=================================
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap < <><left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
"==============================================================================
"
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
let g:which_key_map['b'] = {
      \ 'name' : '+buffer' ,
      \ 's' : [':w '     , 'save-buffer']          ,
      \ 'N' : [':enew '     , 'new-scratch-buffer']          ,
      \ 'q' : [':%bd|e#|bd#'     , 'delete other buffers']          ,
      \ }

let g:which_key_map['j'] = {
      \ 'name' : '+jump' ,
      \ 's' : [':CocList --interactive symbols'     , 'symbols']          ,
      \ }

let g:which_key_map['f'] = {
      \ 'name' : '+files' ,
      \ 's' : [':Vista!!'                        , 'file symbols'],
      \ }

let g:which_key_map['p'] = {
      \ 'name' : '+project' ,
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
      \ 'h' : [':write | edit | TSBufEnable highlight', 'Fix Treesitter highlight']          ,
      \ }

let g:which_key_map['c'] = {
      \ 'name' : '+coc' ,
      \ 'R' : [':CocRestart', 'restart coc']          ,
      \ 'D' : [':CocDisable', 'disable coc']          ,
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
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':Commits'                               , 'view commits'],
      \ 'V' : [':BCommits'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
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
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
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
      \ 'l' : [':CocList diagnostics'                , 'diagnostics'],
      \ }

" floaterm
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=20'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'r' : [':FloatermNew RG'                               , 'RG'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew ipython'                            , 'ipython'],
      \ 'v' : [':FloatermNew vifm'                              , 'vifm'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 'b' : [':FloatermNew broot -s'                          , 'broot'],
      \ }

" s is for search
"" \ 'p' : [':RG'           , 'text Rg'],
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : ['<Plug>CtrlSFPrompt'     , 'fuzzy find'],
      \ '.' : ['<Plug>CtrlSFCCwordPath'     , 'word under cursor find'],
      \ 'w' : ['<Plug>CtrlSFCCwordExec'     , 'word under cursor find'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Clap grep'           , 'clap search'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Clap files'        , 'files'],
      \ 'g' : [':Clap git_diff_files'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':Clap History'      , 'file history'],
      \ 'H' : [':Clap command_history'     , 'command history'],
      \ 's' : [':Clap lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 't' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 'l' : [':Colors'       , 'color schemes'],
       \ 'p' : [':Clap grep'           , 'clap grep'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

call which_key#register('<Space>', "g:which_key_map")
"==============================================================================

"================AUTOSAVE======================================================"
" autocmd TextChanged,TextChangedI <buffer> silent write
" autocmd CursorHold,CursorHoldI * update
"========================TREE_SITTER_HIGHLIGHT===============================
" autocmd BufEnter *.toml setf toml
" autocmd BufEnter *.js,*.py,*.ts,*.css,*.json,*.html,*.jsx,*.rs,*.toml TSBufEnable highlight
" autocmd BufEnter *.jsx setf typescriptreact

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c" },  -- list of language that will be disabled
  },
}
EOF
""=====================FIRENVIM================================================
" if exists('g:started_by_firenvim')
"   set laststatus=0
" else
"   set laststatus=2
" endif
"=============================================================================

" set listchars+=space:.
let g:python_highlight_all = 1

"*******************
"" Searchers exclude different shit
"" *****************

"".fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*__pycache__,

"
"************
"cock_server
"***********
"
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

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
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

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


"======================Keybindings================================================
:imap jk <Esc>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
" nmap <leader>tf :NERDTreeFind<CR
nmap <leader>pt :NERDTreeToggle<CR>
map <leader>pr :NERDTreeFind<cr>
nmap <leader>bp :bp<CR>
nmap <leader>bn :bn<CR>

nmap <silent>gt :bn<CR>
nmap <silent>Gt :bp<CR>
" nmap <leader>bd :bd<CR>
nmap <leader>bad :%bd<CR>
nmap <leader>wqa :wqa<CR>
nmap <leader>bb :Buffers<CR>
nmap <leader>ff :Clap files<CR>
nmap <leader>ow :Windows<CR>
nmap <leader>gs :GFiles?<Cr>
nmap <leader>/ :RG<Cr>
nmap <leader>ac :Commands<Cr>
nmap <leader>sl :Lines<Cr>
nmap <leader>fr :Clap history<Cr>
nmap <leader>cs :Colors<Cr>
noremap <leader>bd :bp<cr>:bd #<cr>
" remaping global copyPaste to leader like mappings
nmap <leader>y "+y
vnoremap <leader>y "+y
" emacs bindings
map! <C-E> <esc>A
map! <C-A> <esc>0i
"remaping shortcut for popup suggestions
inoremap <expr><C-J> pumvisible() ? "\<C-n>" : "\<C-J>"
inoremap <expr><C-K> pumvisible() ? "\<C-p>" : "\<C-K>"
" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
nmap <leader><space> :
" this is how you use command an envoke it
nnoremap <leader>n :noh<Cr>
vmap <C-/>f <Plug>CtrlSFVwordExec
"==============================================================================

"==============================CTRLSF========================================== 
let g:ctrlsf_default_view_mode = 'normal'
let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }"
let g:ctrlsf_populate_qflist = 1
"
"==============================================================================
"==============================================================================
"FZF
"*******************
"Searchers exclude different shit
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*__pycache__,
"" *****************
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

let $FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden -g "!**idea**" -g "!**.vscode**" -g "!**venv**" -g "!*.mypy_cache*" -g "!**build**" -g "!**dist**" -g "!**node_modules**" -g "!**__pycache__**" -g "!*tags" -g "!*.git"'

"****fzf files preview
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

"****fzf history preview
command! -bang -nargs=? -complete=dir History
    \ call fzf#vim#history(fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
command! -bang ProjectFiles2 call fzf#vim#history({'dir': s:find_git_root()}, <bang>0))

"*** default fzf search"

" ***fzf search with preview full
 function! RipgrepFzf(query, fullscreen)
     let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -g "!**idea**" \-g "!**.vscode**" -g "!**venv**" -g "!*mypy*" -g "!**build**" -g "!**dist**" -g "!**node_modules**" -g "!**__pycache__**" -g "!*tags" -g "!*.git" %s || true'
     let initial_command = printf(command_fmt, shellescape(a:query))
     let reload_command = printf(command_fmt, '{q}')
     let spec = {'options': ['--layout=reverse', '--info=inline', '--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
     call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
 endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


"=====================================================================
