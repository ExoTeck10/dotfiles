return {
  {
    'folke/snacks.nvim',
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true, -- Show hidden/dotfiles
            exclude = { 'node_modules', '.venv', '.git' },
          },
        },
      },
    },
  },
}
