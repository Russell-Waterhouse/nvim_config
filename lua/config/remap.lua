vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- jk to enter normal mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })

-- capital W saves too
vim.keymap.set("n", "W", "w")

-- Capital J doesn't fly to the right anymore
vim.keymap.set("n", "J", "mzJ`z")

-- stay centered on screen when CTRL-D or CTRL-U
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- stay centered on screen while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- replace with <Leader>s
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- copy to system clipboard with <Leader>y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


