return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      'williamboman/mason-lspconfig.nvim',
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls",
               "clangd",
               "taplo",
               "rust_analyzer",
               "gopls"
            }
         })
      end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local capabilities = require('cmp_nvim_lsp').default_capabilities()
         
         vim.lsp.config.lua_ls = {
            capabilities = capabilities,
         }
         vim.lsp.config.clangd = {
            capabilities = capabilities,
         }
         vim.lsp.config.taplo = {
            capabilities = capabilities,
         }
         vim.lsp.config.rust_analyzer = {
            capabilities = capabilities,
         }
         vim.lsp.config.gopls = {
            capabilities = capabilities,
            settings = {
               gopls = {
                  gofumpt = true,
                  usePlaceholders = true,
                  completeUnimported = true,
                  staticcheck = true,
                  analyses = {
                     unusedparams = true,
                     shadow = true,
                  }
               }
            }
         }
         vim.lsp.enable('lua_ls')
         vim.lsp.enable('clangd')
         vim.lsp.enable('taplo')
         vim.lsp.enable('rust_analyzer')
         vim.lsp.enable('gopls')

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

      end
   }

}
