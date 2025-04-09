vim.lsp.config.clangd = {

  cmd = { 'clangd' },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = { '.clangd', 'compile_commands.json', 'git' },
  -- single_file_support=true,
}

vim.lsp.enable("clangd")
