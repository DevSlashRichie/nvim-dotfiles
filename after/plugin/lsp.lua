local lsp = require("lsp-zero")
local lih = require("lsp-inlayhints")

lsp.preset('recommended')

local mlsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mlsp.setup({
    'tsserver',
    'eslint',
    'rust_analyzer'
})

lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

lsp.configure('tsserver', {
    settings = {
        typescript = {
            inlayHints = {
                includeInlayParameterNameHints = 'all',
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
            }
        },
    }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = buffnr, remap = false }

    --- vim.keymap.set("n", "<C-b>", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
    --- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    --- vim.keymap.set("n", "<A-Enter>", function() vim.lsp.buf.code_action() end, opts)

    lih.on_attach(client, bufnr)
end)

lih.setup()
lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
    on_attach = function(client, bufnr)
        null_opts.on_attach(client, bufnr)
        --- you can add more stuff here if you need it
    end,
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.rustywind,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.prettier,
    }
})

vim.keymap.set("n", "<leader>fr", function() vim.lsp.buf.format() end)

--- we don't need rust tools for now as we are using inlay hints
--- local lsp_rust = lsp.build_options('rust_analyzer')
--- require('rust-tools').setup({server = lsp_rust})
