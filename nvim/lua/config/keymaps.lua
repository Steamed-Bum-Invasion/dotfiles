-- KEYMAPS FOR NEOVIM CONFIG --

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- setting leader key and options
vim.g.mapleader = " "
local keymap = vim.keymap  -- for conciseness
local opts = { noremap = true, silent = true }


-- exiting insert mode
keymap.set("i", "jk", "<ESC>", opts, { desc = "exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", opts, { desc = "exit insert mode with kj" })


-- window management

-- splits
keymap.set("n", "<leader>sv", "<C-w>v", opts, { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", opts, { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", opts, { desc = "make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts, { desc = "close current split" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", opts, { desc = "open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", opts, { desc = "close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", opts, { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", opts, { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", opts, { desc = "open current buffer in new tab" })

-- in-window movement
keymap.set("n", "<C-h>", "<C-w>h", opts, { desc = "move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", opts, { desc = "move to right window" })
keymap.set("n", "<C-k>", "<C-w>k", opts, { desc = "move to down window" })
keymap.set("n", "<C-l>", "<C-w>l", opts, { desc = "move to up window" })

-- resize with arrows
keymap.set("n", "<leader>ru", "<cmd>resize +2<CR>", opts, { desc = "resize up" })
keymap.set("n", "<leader>rd", "<cmd>resize -2<CR>", opts, { desc = "resize down" })
keymap.set("n", "<leader>rr", "<cmd>vertical resize -2<CR>", opts, { desc = "resize left" })
keymap.set("n", "<leader>rl", "<cmd>vertical resize +2<CR>", opts, { desc = "resize right" })


-- remove highlights
keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", opts, { desc = "removes search highlights" })


