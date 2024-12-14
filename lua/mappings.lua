require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>fs", "<cmd> w <cr>", { desc = "file save" })

map("i", "jk", "<ESC>")

-- local nomap = vim.keymap.del

-- nomap({ "n", "i", "v" }, "<C-s>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
