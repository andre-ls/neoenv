local plugins = {
    "nvim-treesitter/nvim-treesitter", --Highlighter
    "m4xshen/autoclose.nvim", --Autoclose Brackets, Quotes, etc.
    "lewis6991/gitsigns.nvim", --Git Signs
	"github/copilot.vim",
	"terrortylor/nvim-comment", -- Comment Keybindings
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, --Identation Lines
    {
    	'nvim-telescope/telescope.nvim', tag = '0.1.6', --Fuzzy Finder
    	dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
    	'nvim-lualine/lualine.nvim', --StatusLine
    	dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
	"folke/tokyonight.nvim", --Theme
	lazy = false,
	priority = 1000,
	opts = {},
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
