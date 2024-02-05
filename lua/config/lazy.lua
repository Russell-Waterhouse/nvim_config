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
        -- TODO: figure out what's wrong here, something isn't set up right
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
		{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
		{'neovim/nvim-lspconfig'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},

        -- TODO: experiment with this, I might want to use https://github.com/tpope/vim-surround instead
        -- if this is buggy
        {
            "kylechui/nvim-surround",
            version = "*", -- Use for stability; omit to use `main` branch for the latest features
            event = "VeryLazy",
            config = function()
                require("nvim-surround").setup({
                    -- Configuration here, or leave empty to use defaults
                })
            end
        },

        -- can now use gc<motion> to toggle comments
        -- i.e. gcc to toggle line comments, or
        -- gcap to toggle comments around a paragraph
        { "numToStr/Comment.nvim" },

        -- Git integrations
        { "lewis6991/gitsigns.nvim" },

        -- TODO: add github copilot
        -- TODO: Decide if I want autocompletion with nvim-cmp, cmp-buffer, cmp-path
        -- TODO: Decide if I want snippets from LuaSNip, cmp_luasnip, friendly-snippets
        -- TODO: See LSP stuff because there's some overlap there

        --TODO: Find your favourite git plugin and add that

	},
})

