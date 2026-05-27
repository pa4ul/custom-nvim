-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>d", "<leader>e", { remap = true, desc = "Datei-Explorer öffnen" })
vim.keymap.set("n", "<leader>t", "<leader>ft", { remap = true, desc = "Schwebendes Terminal öffnen" })
vim.keymap.set("n", "<leader>r", function()
  -- 1. Datei automatisch speichern
  vim.cmd("w")

  -- 2. Einen horizontalen Split unten öffnen (Höhe: 12 Zeilen)
  vim.cmd("botright 12split")

  -- 3. Ein natives Terminal mit dem Python-Skript starten
  vim.cmd("terminal python3 " .. vim.fn.expand("%:p"))

  -- 4. Sofort in den Terminal-Eingabemodus wechseln, damit du den Output siehst
  vim.cmd("startinsert")

  -- 5. Magie: Sobald du das Fenster verlässt (Rausnavigieren), schließt es sich von selbst
  local buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_create_autocmd("BufLeave", {
    buffer = buf,
    once = true,
    callback = function()
      vim.api.nvim_buf_delete(buf, { force = true })
    end,
  })
end, { desc = "Python horizontal ausführen & Auto-Close" })
