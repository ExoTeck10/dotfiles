-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`

-- -- Set highlight on search, but clear on pressing <Esc> in normal mode
-- vim.opt.hlsearch = true
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- -- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- -- TIP: Disable arrow keys in normal mode
-- -- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- -- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- -- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- -- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- -- Remap for dealing with word wrap
-- -- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- -- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- -- Navigate within insert mode
-- -- vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Move left' })
-- -- vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down' })
-- -- vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up' })
-- -- vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Move right' })

-- -- Keybinds to make split navigation easier.
-- --  Use CTRL+<hjkl> to switch between windows
-- --
-- --  See `:help wincmd` for a list of all window commands
-- -- vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
-- -- vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
-- -- vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
-- -- vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- -- Generate new vertical split
-- vim.keymap.set('n', 'vv', '<C-w>v', { desc = 'new vertical split' })

-- -- Move indent lines in visual
-- vim.keymap.set('v', '<', '<gv', { desc = 'Indent line' })
-- vim.keymap.set('v', '>', '>gv', { desc = 'Indent line' })

-- -- Add back Ctrl-s to save the buffer
-- vim.keymap.set('n', '<C-s>', vim.cmd.write, { desc = 'Save file' })

-- -- Highlight when yanking (copying) text
-- --  Try it with `yap` in normal mode
-- --  See `:help vim.highlight.on_yank()`
-- vim.api.nvim_create_autocmd('TextYankPost', {
--   desc = 'Highlight when yanking (copying) text',
--   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
--   callback = function()
--     vim.highlight.on_yank()
--   end,
-- })

-- vim: ts=2 sts=2 sw=2 et
