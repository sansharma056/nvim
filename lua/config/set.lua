vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.signcolumn = "yes"

vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

local ensure_installed = {
	"bash",
	"c",
	"cpp",
	"css",
	"dart",
	"dockerfile",
	"fish",
	"go",
	"graphql",
	"hcl",
	"helm",
	"html",
	"java",
	"javascript",
	"json",
	"llvm",
	"lua",
	"make",
	"markdown",
	"markdown_inline",
	"prisma",
	"proto",
	"python",
	"query",
	"rust",
	"scss",
	"svelte",
	"sql",
	"terraform",
	"toml",
	"tsx",
	"typescript",
	"vimdoc",
	"vue",
	"yaml",
	"zig",
}

local isnt_installed = function(lang)
	return #vim.api.nvim_get_runtime_file("parser/" .. lang .. ".*", false) == 0
end

local to_install = vim.tbl_filter(isnt_installed, ensure_installed)
if #to_install > 0 then
	require("nvim-treesitter").install(to_install)
end

-- Ensure tree-sitter enabled after opening a file for target language
local filetypes = {}
for _, lang in ipairs(ensure_installed) do
	for _, ft in ipairs(vim.treesitter.language.get_filetypes(lang)) do
		table.insert(filetypes, ft)
	end
end

vim.api.nvim_create_autocmd("FileType", {
	desc = "Start treesitter",
	group = vim.api.nvim_create_augroup("start_treesitter", { clear = true }),
	pattern = filetypes,
	callback = function(ev)
		vim.treesitter.start(ev.buf)
	end,
})
