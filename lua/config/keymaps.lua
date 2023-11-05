-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "<leader>l", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, { noremap = true, desc = "Neovim-tree" })

vim.keymap.set({ "n", "v" }, "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

vim.keymap.set({ "n", "v" }, "<leader>cc", function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  vim.cmd("%s/\\s\\+$//e")
  vim.api.nvim_win_set_cursor(0, cursor)
end, { noremap = true, desc = "Trailing-whitespace" })

vim.keymap.set({ "n", "v" }, "<leader>t", function()
  vim.cmd("terminal")
end, { noremap = true, desc = "RunTerminal" })
