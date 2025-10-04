return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			keymaps = {
				["g?"] = { "actions.show_help", mode = "n" },
				["<CR>"] = "actions.select",
				["<C-s>"] = { "actions.select", opts = { vertical = true } },
				["<C-h>"] = { "actions.select", opts = { horizontal = true } },
				["<C-t>"] = { "actions.select", opts = { tab = true } },
				["<C-c>"] = { "actions.close", mode = "n" },
				["<C-l>"] = "actions.refresh",
				["-"] = { "actions.parent", mode = "n" },
				["_"] = { "actions.open_cwd", mode = "n" },
				["`"] = { "actions.cd", mode = "n" },
				["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
				["gs"] = { "actions.change_sort", mode = "n" },
				["gx"] = "actions.open_external",
				["g."] = { "actions.toggle_hidden", mode = "n" },
				["g\\"] = { "actions.toggle_trash", mode = "n" },
			},
			use_default_keymaps = false,
		},
		-- Optional dependencies
		dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
		lazy = false,
		keys = {
			{ "<C-b>", "<cmd>Oil<cr>", desc = "Open Oil" },
		},
	},

	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>b",
				function()
					require("telescope.builtin").buffers()
				end,
				"Go to buffers",
			},
			{
				"<C-p>",
				function()
					require("telescope.builtin").find_files()
				end,
				"Find files",
			},
			{
				"<leader>gf",
				function()
					require("telescope.builtin").git_files()
				end,
				"Find git files",
			},
			{
				"<leader>lg",
				function()
					require("telescope.builtin").live_grep()
				end,
				"Live grep",
			},
		},
	},

	{
		"ThePrimeagen/harpoon",
		keys = {
			{
				"<leader>a",
				function()
					require("harpoon.mark").add_file()
				end,
				"Add file to harpoon",
			},
			{
				"<C-e>",
				function()
					require("harpoon.ui").toggle_quick_menu()
				end,
				"Toggle harpoon quick menu",
			},
		},
	},
}
