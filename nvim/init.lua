require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.lsp")


-- enable lsp
vim.lsp.enable("clangd")
vim.lsp.enable("pyright")
vim.lsp.enable("bashls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("cmake")
