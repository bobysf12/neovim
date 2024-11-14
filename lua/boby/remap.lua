vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open explorer" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear highlights" })

keymap.set("i", "jk", "<ESC>", { desc = "jk to escape insert mode" })

-- window navigation
keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })
keymap.set("n", "<leader>se", ":wincmd =<CR>", { desc = "Equalize splits" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

-- tab navigation
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Previous tab" })

