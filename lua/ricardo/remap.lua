---vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>pp", '"+p')
vim.keymap.set("n", "<leader>pp", '"+p')

vim.keymap.set("n", "<S-Tab>", ":tabnext<CR>", { noremap = true })
vim.keymap.set("n", "<leader>rs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "q", "<Nop>", { noremap = true })

vim.keymap.set("n", "gl", ":diffget //2<CR>")
vim.keymap.set("n", "gr", ":diffget //3<CR>")
