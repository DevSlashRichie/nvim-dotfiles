require('rose-pine').setup({
	dim_nc_background = true,
	disable_background = true,
})
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
