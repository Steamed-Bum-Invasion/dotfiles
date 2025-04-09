vim.lsp.config.pyright = {

  cmd = { 'pyright' },
  filetypes = { "python" },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
    '.git',
  },
  single_file_support = true,

}


vim.lsp.enable("pyright")
