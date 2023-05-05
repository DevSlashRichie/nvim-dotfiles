vim.keymap.set('i', '<C-m>', '<Plug>(copilot-suggest)')
vim.keymap.set('n', '<C-m>', '<Plug>(copilot-suggest)')

vim.keymap.set('i', '<C-y>', function() 
    vim.fn["copilot#Accept"]("")
end, { expr = true })



