return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    require("bufferline").setup({

      options = {
        mode = "tabs", -- set to "tabs" to only show tabpages instead

        -- numbers = "ordinal",
        tab_size = 18,
        close_command = "tabclose %d", -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = "tabclose %d", -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = "tabclose %d", -- can be a string | function, | false see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        close_icon = ' ',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',
        --- name_formatter can be used to change the buffer's label in the bufferline.
        --- Please note some names can/will break the
        --- bufferline so use this at your discretion knowing that it has
        --- some limitations that will *NOT* be fixed.
        -- name_formatter = function(buf)  -- buf contains:
        --       -- name                | str        | the basename of the active file
        --       -- path                | str        | the full path of the active file
        --       -- bufnr               | int        | the number of the active buffer
        --       -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
        --       -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
        -- end,
        --
        truncate_names = true, -- whether or not tab names should be truncated

        diagnostics = "nvim_lsp",

        diagnostics_update_on_event = true, -- use nvim's diagnostic handler

        diagnostics_indicator = function(level, count, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
                or (e == "warning" and " " or " ")
            s = s .. n .. sym
          end
          return s
        end,

        show_duplicate_prefix = false, -- whether to show duplicate buffer prefix

        separator_style = "thick",     -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
      }

    })
  end,

}
