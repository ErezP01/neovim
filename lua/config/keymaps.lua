-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Keymap for opening oil.nvim with <leader>e
vim.keymap.set("n", "<leader>ef", ":Oil<CR>", { noremap = true, silent = true, desc = "Open Oil File Explorer" })
