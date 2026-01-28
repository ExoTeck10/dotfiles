return {
  {
    'hxueh/beancount.nvim',
    ft = { 'beancount', 'bean' },
    -- dependencies = {
    --   {
    --     'sagen/blink.cmp',
    --     optional = true,
    --     opts = function(_, opts)
    --       table.insert(opts.sources.default, 'beancount')
    --       opts.sources.providers = opts.sources.providers or {}
    --       opts.sources.providers.beancount = {
    --         name = 'beancount',
    --         module = 'beancount.completion.blink',
    --         score_offset = 100,
    --         opts = {
    --           trigger_characters = { ':', '#', '^', '"', ' ' },
    --         },
    --       }
    --       return opts
    --     end,
    --   },
    --   { 'L2MON4D3/LuaSnip' },
    -- },
    opts = {
      main_bean_file = 'main.bean',
      auto_format_on_save = false,
      instant_alignment = false,
    },
  },
}
