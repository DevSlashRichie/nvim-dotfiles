local il = require('illuminate')

il.configure({
    providers = {
        'lsp',
        'treesitter',
        'regex'
    },
    delay = 100,
    min_count_to_highlight = 2,
})

