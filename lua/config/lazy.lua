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

		-- Bottom status bar
		{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

		-- Telescope: fuzzy finder
		{
		    'nvim-telescope/telescope.nvim', tag = '0.1.5',
		     dependencies = { 'nvim-lua/plenary.nvim' }
        },

        -- nvim-surround: surround text with whatever characters you give it.
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
        { "f-person/git-blame.nvim" },
        { "sindrets/diffview.nvim" },

        -- TODO: All my LSP Stuff

        -- TODO: Decide if I want to add github copilot?
        -- TODO: Decide if I want autocompletion with nvim-cmp, cmp-buffer, cmp-path
        -- TODO: Decide if I want snippets from LuaSNip, cmp_luasnip, friendly-snippets

	},
})

