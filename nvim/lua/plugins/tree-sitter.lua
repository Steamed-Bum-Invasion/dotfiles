return{
  "nvim-treesitter/nvim-treesitter",

  -- sets when treesitter will load in
  event = { "BufReadPre", "BufNewFile" },

  config = function()

    require("nvim-treesitter.configs").setup ({

      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

      sync_install = false,

      auto_install = true,

      highlight = { enable = true },

      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>ss", 
          node_incremental = "<leader>si",
          node_decremental = "<leader>sd",
          scope_incremental = "<leader>sc",
        },
      },

    })

  end

}
