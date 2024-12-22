-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.api.nvim_set_keymap
local keydelete = vim.keymap.del
keymap("i", "jk", "<Esc>", {})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sql",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "i", "<Left>", "<Left>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "i", "<Right>", "<Right>", { noremap = true, silent = true })
  end,
})
