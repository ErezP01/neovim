-- plugins/lualine.lua
return {
  "nvim-lualine/lualine.nvim",
  requires = { "kyazdani42/nvim-web-devicons" }, -- Nerd font icons support
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true, -- Enable icons
        theme = "dracula", -- Use the Dracula theme
        component_separators = { "", "" }, -- Nerd Font separators
        section_separators = { "", "" }, -- Nerd Font separators
      },
    })
  end,
}
