-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- See `:help vim.o`

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

local opt = vim.opt

-- Enable break indent
opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  and `:help 'listchars'`
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- opt.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
-- opt.shiftwidth = 2 -- Number of spaces inserted when indenting
-- opt.filetype = 'plugin'

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = 'basedpyright'
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = 'ruff'

-- disable clipboard sync
vim.opt.clipboard = ''

