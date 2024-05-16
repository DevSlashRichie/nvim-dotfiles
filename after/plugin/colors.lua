require('rose-pine').setup({
	flavour = 'frappe',
	disable_background = true,
})

require('catppuccin').setup({
	transparent_background = true,
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
end

ColorMyPencils()
