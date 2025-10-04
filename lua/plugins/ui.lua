return {
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme dracula]])
		end,
	},

	{
		"akinsho/bufferline.nvim",
		lazy = false,
		dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
		opts = {
			options = {
				numbers = "ordinal",
				max_name_length = 18,
				tab_size = 20,
				diagnostics = "nvim_lsp",
				separator_style = "thin",
				show_close_icon = false,
				show_buffer_icons = false,
				show_buffer_close_icons = false,
			},
		},
		keys = {
			{ "<A-1>", '<cmd>lua require("bufferline").go_to_buffer(1, true)<cr>' },
			{ "<A-2>", '<cmd>lua require("bufferline").go_to_buffer(2, true)<cr>' },
			{ "<A-3>", '<cmd>lua require("bufferline").go_to_buffer(3, true)<cr>' },
			{ "<A-4>", '<cmd>lua require("bufferline").go_to_buffer(4, true)<cr>' },
			{ "<A-5>", '<cmd>lua require("bufferline").go_to_buffer(5, true)<cr>' },
			{ "<A-6>", '<cmd>lua require("bufferline").go_to_buffer(6, true)<cr>' },
			{ "<A-7>", '<cmd>lua require("bufferline").go_to_buffer(7, true)<cr>' },
			{ "<A-8>", '<cmd>lua require("bufferline").go_to_buffer(8, true)<cr>' },
			{ "<A-9>", '<cmd>lua require("bufferline").go_to_buffer(9, true)<cr>' },
			{ "<A-0>", '<cmd>lua require("bufferline").go_to_buffer(10, true)<cr>' },
			{ "<A-h>", ":BufferLineMovePrev<CR>" },
			{ "<A-l>", ":BufferLineMoveNext<CR>" },
			{ "<leader>fr", ":BufferLineCloseRight<CR>" },
			{ "<leader>fl", ":BufferLineCloseLeft<CR>" },
		},
	},

	{
		"kevinhwang91/nvim-ufo",
		event = "VimEnter",
		dependencies = { { "kevinhwang91/promise-async" } },
		opts = {
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		},
		keys = {
			{
				"zR",
				function()
					local ufo = require("ufo")
					ufo.openAllFolds()
				end,
				"Open all folds",
			},
			{
				"zM",
				function()
					local ufo = require("ufo")
					ufo.closeAllFolds()
				end,
				"Close all folds",
			},
		},
	},

	{
		"lewis6991/gitsigns.nvim",
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}
