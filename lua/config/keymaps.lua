-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ",d", "<leader>e", { remap = true, desc = "Datei-Explorer öffnen" })
vim.keymap.set("n", ",t", "<leader>ft", { remap = true, desc = "Schwebendes Terminal öffnen" })
