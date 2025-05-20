-- testIONS FOR NVIM CONFIG --

local test = vim.opt

-- generic
test.updatetime = 300      -- reduces updatetime for faster completion
test.cmdheight = 2         -- more space in the neovim command line for displaying messages
test.termguicolors = true  -- set term gui colors (most terminals support this)
test.undofile = true       -- enables persistent undo
test.virtualedit = "all"   -- enables cursor to move anywhere
test.showmode = false      -- removes mode information
test.scrolloff = 999       -- minimum number of lines to keep from top and bottom
test.sidescroll = 10       -- minimal number of screen columns either side of cursor if wrap is `false`
test.cursorline = true     -- highlights current line
test.iskeyword:append("-") -- makes '-' a part of a word
test.inccommand = "split"  -- makes split when doing replace all

-- clipboard
test.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- for wrap
test.wrap = false     -- removes line wrapping
test.linebreak = true -- companion to wrap, don't split words

-- for numberline
test.number = true         -- enables line number
test.relativenumber = true -- enables relative line number
test.numberwidth = 4       -- increases width of numberline

-- splits for windows
test.splitbelow = true -- force all horizontal splits to go below current window
test.splitright = true -- force all vertical splits to go to the right of current window

-- tabs and indents
test.expandtab = true -- convert tabs to spaces, use <CTRL-V>TAB to use tab
test.tabstop = 2      -- number of spaces tabs expand into
test.shiftwidth = 2   -- number of spaces for each indent
test.swapfile = false -- prevent creation of swapfile

-- cases for search
test.ignorecase = true -- ignores cases during search
test.smartcase = true  -- allows case based search

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- text wrapping for md and text
local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  group = group,
  callback = function()
    vim.wo.wrap = true
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.txt",
  group = group,
  callback = function()
    vim.wo.wrap = true
  end,
})

vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  group = group,
  callback = function()
    vim.wo.wrap = false
  end,
})

-- stolen from https://www.reddit.com/r/neovim/comments/17eomi1/how_do_you_deal_with_vertical_scrolloff_not_being/
-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
--   group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
--   callback = function()
--     local win_h = vim.api.nvim_win_get_height(0)
--     local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
--     local dist = vim.fn.line "$" - vim.fn.line "."
--     local rem = vim.fn.line "w$" - vim.fn.line "w0" + 1
--     if dist < off and win_h - rem + dist < off then
--       local view = vim.fn.winsaveview()
--       view.topline = view.topline + off - (win_h - rem + dist)
--       vim.fn.winrestview(view)
--     end
--   end,
-- })
