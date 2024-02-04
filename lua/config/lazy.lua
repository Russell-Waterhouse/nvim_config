-- require keymaps
require('config.remap')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)


require("lazy").setup({
	{
		-- Treesitter: Better highlighting
		{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

		-- Monokai theme
		{ "tanvirtin/monokai.nvim" },

		-- LSP support
		{ "williamboman/mason.nvim" },

		-- Bottom status bar
		{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

		-- Telescope: fuzzy finder
		{
		    'nvim-telescope/telescope.nvim', tag = '0.1.5',
		     dependencies = { 'nvim-lua/plenary.nvim' }
	        },

		-- LSP stuff from lsp-zero
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
		{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
		{'neovim/nvim-lspconfig'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},

	},
})

require('config.after')

