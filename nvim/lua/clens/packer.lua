-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- THEMES --
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "rebelot/kanagawa.nvim" }
    -- END THEMES --

    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }


    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        requires = { "nvim-treesitter/nvim-treesitter" },
        "Badhi/nvim-treesitter-cpp-tools",
    }

    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'L3MON4D3/LuaSnip'}

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v2.x',
	    requires = {
	        -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
		        'williamboman/mason.nvim',
		        run = function()
                    pcall(vim.cmd, 'MasonUpdate')
		        end,
	        },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

	        -- Autocompletion
	        {'hrsh7th/nvim-cmp'},     -- Required
	        {'hrsh7th/cmp-nvim-lsp'}, -- Required
	        {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use ({"ziontee113/color-picker.nvim" })
    use ({'andweeb/presence.nvim'})

    use ({'lspcontainers/lspcontainers.nvim'})

    use {
        'TimUntersberger/neogit',
        requires = {
          'nvim-lua/plenary.nvim',
          'sindrets/diffview.nvim',
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        }
    }

end)
