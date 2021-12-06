
--[[ 

language server config

https://github.com/typescript-language-server/typescript-language-server
https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md 

--]]

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true



