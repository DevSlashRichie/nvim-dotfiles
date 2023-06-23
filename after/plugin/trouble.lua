vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>vrr", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)


vim.keymap.set("n", "<C-b>", "<cmd>TroubleToggle lsp_definitions<cr>",
  {silent = true, noremap = true}
)
