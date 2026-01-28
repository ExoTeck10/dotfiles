return {
  -- {
  --   'folke/which-key.nvim',
  --   opts = {
  --     spec = {
  --       {
  --         { '<leader>a', group = 'ai' },
  --       },
  --     },
  --   },
  -- },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        'beancount',
      })
    end,
  },
}
