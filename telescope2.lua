local actions = require('telescope.actions')
require('telescope').setup{
    pickers = {
        find_files = {
            find_command = {"rg", "--files", "--no-ignore-vcs"},
            file_ignore_patterns = {
                "node_modules/",
                "idea/",
                "%.vscode",
                "venv",
                "%.mypy_cache",
                "build",
                "dist",
                "__pycache__",
                "tags",
                "pyc",
                "%.git",
                ".environ",
            },
        }
    },
  defaults = {
    vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
    },
    layout_config = {
        prompt_position = "top",
        width = 0.75,
        preview_cutoff = 120,
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {
        "node_modules/",
        "idea/",
        ".vscode",
        "venv",
        ".mypy_cache",
        "build",
        "dist",
        "__pycache__",
        "tags",
        "*.git",
        "package-lock.json",
        ".environ",
    },
    generic_sorter =  require'telescope.sorters'.get_fzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<c-9>"] = "delete_buffer",
                },
                n = {
                    ["<c-9>"] = require("telescope.actions").delete_buffer,
                }
            }
        },
    },

     mappings = {
       i = {
         ["<esc>"] = actions.close;
         ["<C-j>"] = actions.move_selection_next;
         ["<C-k>"] = actions.move_selection_previous;
         ["<C-n>"] = actions.cycle_history_next;
         ["<C-p>"] = actions.cycle_history_prev;
       }
   },

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
local previewers = require('telescope.previewers')
local pickers = require('telescope.pickers')
local sorters = require('telescope.sorters')
local finders = require('telescope.finders')
local conf = require("telescope.config").values

function dif_picker()
    pickers.new {
      results_title = 'Resources',
      -- Run an external command and show the results in the finder window
      -- finder = finders.new_oneshot_job({'git', 'diff', '--name-only', 'HEAD' }),
      finder = finders.new_oneshot_job({'git', 'diff', '--name-only', 'HEAD' }),
      sorter = conf.generic_sorter(),
      previewer = previewers.vim_buffer_cat.new {
        get_command = function(entry)
          return {'git', 'diff', '--name-only', 'HEAD',  entry.value}
        end
      }
      -- previewer = previewers.new_termopen_previewer {
      --   -- Execute another command using the highlighted entry
      --   get_command = function(entry)
      --     return {'git', 'diff', '--name-only', 'HEAD',  entry.value}
      --   end
      -- },
    }:find()
end

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('vim_bookmarks')
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')

