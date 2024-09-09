return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Ensure LSP completion is integrated
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert({
        -- Map Tab to select the next item
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),

        -- Map Shift-Tab to select the previous item
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        -- Map Enter to confirm the selection
        ["<CR>"] = cmp.mapping.confirm({ select = true }),

        -- Map Ctrl-Space to manually trigger completion
        ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion

        -- Map Ctrl-e to abort
        ["<C-e>"] = cmp.mapping.abort(),
      })

      -- Ensure LSP is one of the sources for autocompletion
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP completion source
        { name = "buffer" }, -- Buffer completion source
        { name = "path" }, -- Path completion source
      })
    end,
  },
}
