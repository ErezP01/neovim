return {
  -- Configure the HTML language server (vscode-html-language-server)
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")

      -- Add LSP capabilities from cmp-nvim-lsp
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      -- Add the configuration for the HTML language server
      lspconfig.html.setup({
        cmd = { "vscode-html-language-server", "--stdio" }, -- Use the globally installed server
        filetypes = { "html", "htm" }, -- Define filetypes
        capabilities = capabilities, -- Include the capabilities for autocompletion
        settings = {
          html = {
            format = { enable = true }, -- Enable formatting
            hover = { documentation = true, references = true }, -- Enable hover documentation
          },
        },
      })
    end,
  },
}
