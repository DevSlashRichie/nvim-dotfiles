require('mini.surround').setup({
  mappings = {
    add = 'ta', -- Add surrounding in Normal and Visual modes
    delete = 'td', -- Delete surrounding
    find = 'tf', -- Find surrounding (to the right)
    find_left = 'tF', -- Find surrounding (to the left)
    highlight = 'th', -- Highlight surrounding
    replace = 'tr', -- Replace surrounding
    update_n_lines = 'tn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },
})
