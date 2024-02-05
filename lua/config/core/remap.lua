vim.g.mapleader = " "

local keymap = vim.keymap

-- jk to enter normal mode
keymap.set("i", "jk", "<Esc>", { noremap = true })

-- capital W saves too
keymap.set("n", "W", "w")

-- Capital J doesn't fly to the right anymore
keymap.set("n", "J", "mzJ`z")

-- stay centered on screen when CTRL-D or CTRL-U
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- stay centered on screen while searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- replace word under cursor with <Leader>s
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- copy to system clipboard with <Leader>y
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- clear highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- leader sv split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- leader sh split horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- leader sx close current split window
keymap.set("n", "<leader>wl", "<C-w>l") -- leader wl = move to right split window
keymap.set("n", "<leader>wh", "<C-w>h") -- leader wl = move to left split window
keymap.set("n", "<leader>wj", "<C-w>j") -- leader wl = move to bottom split window
keymap.set("n", "<leader>wk", "<C-w>k") -- leader wl = move to top split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close the current tab
keymap.set("n", "<leader>tl", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>th", ":tabp<CR>") -- go to previous tab

