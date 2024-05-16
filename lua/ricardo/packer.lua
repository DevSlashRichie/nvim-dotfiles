-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { {'nvim-lua/plenary.nvim'} }
    })

    use({ 
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            --vim.cmd('colorscheme catppuccin')
        end
    })

    use({ 
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            --vim.cmd('colorscheme rose-pine')
        end
    })

    use ({ 
	'nvim-treesitter/nvim-treesitter', 
	run = function()
	    local ts_install = require('nvim-treesitter.install').update({ with_sync = true  }) 
	    ts_install()
	end
    })

    use('nvim-treesitter/nvim-treesitter-context')

    use('theprimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use('RRethy/vim-illuminate')

    use('easymotion/vim-easymotion')

    use('f-person/git-blame.nvim')

    --[[
  use({
      'stevearc/oil.nvim', config = function()
	  require('oil').setup() 
      end
  })
  --]]

    use({
	'jose-elias-alvarez/null-ls.nvim',
	requires = {
	    {'nvim-lua/plenary.nvim'}
	}
    })

    use('neovim/nvim-lspconfig')

    use('simrat39/rust-tools.nvim')

    use('nvim-lua/plenary.nvim')
    use('mfussenegger/nvim-dap')

    use({
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	}
    })

    use('github/copilot.vim')

    --- Used for fixing indents
    use('tpope/vim-sleuth')

    use({
	'folke/trouble.nvim',
	config = function()
	    require('trouble').setup {
		icons = false,
	    }
	end
    })

    use({
	"andythigpen/nvim-coverage",
	requires = "nvim-lua/plenary.nvim",
	config = function()
	    require("coverage").setup()
	end,
    })

    use('christoomey/vim-tmux-navigator')

    use('lvimuser/lsp-inlayhints.nvim')

    use('echasnovski/mini.surround')

    use('cohama/lexima.vim')

    use('weilbith/nvim-code-action-menu')

    use('stevearc/oil.nvim')

    use('andweeb/presence.nvim')

    use('wakatime/vim-wakatime')

    use({
	'akinsho/git-conflict.nvim',
	tag = "*",
	config = function()
	    require("git-conflict").setup()
	end
    })

    use({
	'kdheepak/lazygit.nvim',
	require = {
	    'kdheepak/lazygit.nvim'
	}
    })

end)
