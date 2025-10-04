vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("v", "<leader>y", [["+y]])

vim.keymap.set("n", "<Tab>", "<C-^>")

vim.keymap.set("", "<A-w>", "<cmd>bdelete<CR>")

vim.keymap.set("", "<c-d>", "<c-d>zz")
vim.keymap.set("", "<c-u>", "<c-u>zz")
vim.keymap.set("", "n", "nzz")
vim.keymap.set("", "N", "Nzz")

vim.keymap.set("", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
