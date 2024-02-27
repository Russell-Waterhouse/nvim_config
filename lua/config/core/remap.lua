vim.g.mapleader = " "

local keymap = vim.keymap

-- jk to enter normal mode
keymap.set("i", "jk", "<Esc>", { noremap = true })

-- k + j to create a new line below, regardless of where on 
-- the current line you are when in insert mode
keymap.set("i", "kj", "<Esc>o", { noremap = true, silent = true })
-- K + J to create a new line above, regardless of where on 
-- the current line you are when in insert mode
keymap.set("i", "KJ", "<Esc>O", { noremap = true, silent = true })

-- L moves to the right of the current line
keymap.set("n", "L", "$", { noremap = true, silent = true})
-- H Moves to the start of the current line's text
keymap.set("n", "H", "^", { noremap = true, silent = true})

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

-- replace word under cursor with <Leader>r
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- copy to system clipboard with <Leader>y
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- clear highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>V", "<C-w>v") -- leader V split vertically
keymap.set("n", "<leader>H", "<C-w>s") -- leader H split horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- leader sx close current split window
keymap.set("n", "<leader>l", "<C-w>l") -- leader l = move to right split window
keymap.set("n", "<leader>h", "<C-w>h") -- leader h = move to left split window
keymap.set("n", "<leader>j", "<C-w>j") -- leader j = move to bottom split window
keymap.set("n", "<leader>k", "<C-w>k") -- leader k = move to top split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close the current tab
keymap.set("n", "<leader>tl", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>th", ":tabp<CR>") -- go to previous tab

-- Git management
keymap.set("n", "<leader>gdo", ":DiffviewOpen<CR>") -- leader gdo (git diff open) to open git diff
keymap.set("n", "<leader>gdx", ":DiffviewClose<CR>") -- leader gdx (git diff close) to close git diff

-- File Explorer
keymap.set("n", "<leader>e", ":Oil --float<CR>") -- leader gdo (git diff open) to open git diff
