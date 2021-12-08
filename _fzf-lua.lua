local actions = require "fzf-lua.actions"

require'fzf-lua'.setup {
files = {
    -- previewer         = "cat",       -- uncomment to override previewer
    prompt            = 'files❯ ',
    cmd               = "rg --files --no-ignore-vcs  -g '!*venv*' -g '!*node_modules*' -g '!*pyc*' -g '!*.environ' -g '!*dist*' -g '!*build'",             -- "find . -type f -printf '%P\n'",
    git_icons         = true,           -- show git icons?
    file_icons        = true,           -- show file icons?
    color_icons       = true,           -- colorize file|git icons
    actions = {
      -- set bind to 'false' to disable
      ["default"]     = actions.file_edit,
      ["ctrl-s"]      = actions.file_split,
      ["ctrl-v"]      = actions.file_vsplit,
      ["ctrl-t"]      = actions.file_tabedit,
      ["alt-q"]       = actions.file_sel_to_qf,
      -- custom actions are available too
      ["ctrl-y"]      = function(selected) print(selected[1]) end,
    }
  },
  keymap = {
    -- These override the default tables completely
    -- no need to set to `false` to disable a bind
    -- delete or modify is sufficient
    builtin = {
      -- neovim `:tmap` mappings for the fzf win
      ["<F2>"]        = "toggle-fullscreen",
      -- Only valid with the 'builtin' previewer
      ["<F3>"]        = "toggle-preview-wrap",
      ["<F4>"]        = "toggle-preview",
      -- Rotate preview clockwise/counter-clockwise
      ["<F5>"]        = "toggle-preview-ccw",
      ["<F6>"]        = "toggle-preview-cw",
      ["<C-d>"]    = "preview-page-down",
      ["<C-u>"]      = "preview-page-up",
      ["<S-left>"]    = "preview-page-reset",
    },
    fzf = {
      -- fzf '--bind=' options
      -- Only valid with fzf previewers (bat/cat/git/etc)
      -- ["ctrl-u"]        = "unix-line-discard",
      ["ctrl-f"]        = "half-page-down",
      ["ctrl-b"]        = "half-page-up",
      ["ctrl-a"]        = "beginning-of-line",
      ["ctrl-e"]        = "end-of-line",
      ["alt-a"]         = "toggle-all",
      -- Only valid with fzf previewers (bat/cat/git/etc)
      ["f3"]            = "toggle-preview-wrap",
      ["f4"]            = "toggle-preview",
    },
  },
grep = {
    prompt            = 'grep❯ ',
    input_prompt      = 'Grep For❯ ',
    cmd               = "vimrg",
    git_icons         = true,           -- show git icons?
    file_icons        = true,           -- show file icons?
    color_icons       = true,           -- colorize file|git icons
    rg_opts = '--hidden --column --line-number --no-heading --color=always --smart-case -g "!node_modules/" -g "!idea" -g "!.vscode" -g "!venv" -g "!.mypy_cache" -g "!build" -g "!dist"  -g "!__pycache__" -g "!tags" -g "!*.git" -g "!package-lock.json" -g "!.environ" -g "!*pot"'
  },
}
