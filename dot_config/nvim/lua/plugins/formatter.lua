return {

  {
    -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'biome-check' },
        typescript = { 'biome-check' },
        typescriptreact = { 'biome-check' },
        python = { 'ruff_fix', 'ruff_format' },
      },
    },
  },
}
