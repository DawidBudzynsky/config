-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- swap buffers
-- vim.keymap.set("n", "<S-h>", vim.cmd.bp)
-- vim.keymap.set("n", "<S-l>", vim.cmd.bn)

-- get three vim splits
vim.keymap.set("n", "<C-w>m", ":lua SetupThreeSplits()<CR>", { noremap = true })

function SetupThreeSplits()
  vim.cmd("vsplit")
  vim.cmd("vsplit")
  vim.cmd("wincmd 8<")
  vim.cmd("wincmd h")
  vim.cmd("wincmd h")
  vim.cmd("wincmd 8<")
  vim.cmd("wincmd l")
end

vim.api.nvim_set_keymap("n", "<C-w>z", [[:lua ToggleMaximizeWindow()<CR>]], { noremap = true, silent = true })

function ToggleMaximizeWindow()
  if vim.g.maximized_window then
    -- Restore the window to its original size
    vim.cmd([[wincmd =]])
    vim.g.maximized_window = false
  else
    -- Maximize the window
    vim.cmd([[wincmd |]])
    vim.cmd([[wincmd _]])

    -- Set the global variable to true to indicate that the window is maximized
    vim.g.maximized_window = true
  end
end

-- what does this do
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- center the screen after N/n ---
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "{", "{zzzv")
vim.keymap.set("n", "}", "}zzzv")
vim.keymap.set("n", "*", "*zzzv")

-- move up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- id ont use quickfix list
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- tmux sessionizer in vim--
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>=", "<cmd>silent !tmux-app-runner<CR>")

-- subsittution --
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("v", "<leader>s", [[:s/]])
