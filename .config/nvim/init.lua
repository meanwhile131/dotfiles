vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.diffopt = "iwhiteall,inline:word,filler"
vim.opt.cindent = true
vim.filetype.add({
	filename = {
		["docker-compose.yml"] = "yaml.docker-compose",
		["docker-compose.yaml"] = "yaml.docker-compose",
		["compose.yml"] = "yaml.docker-compose",
		["compose.yaml"] = "yaml.docker-compose",
	},
})
vim.pack.add({
	{
		src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
		version = vim.version.range('3')
	},
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",

	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/seblyng/roslyn.nvim",
	"https://github.com/Freedzone/kerbovim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/lervag/vimtex",
	"https://github.com/mfussenegger/nvim-jdtls",
})
require("mason").setup()
vim.filetype.add({
  extension = {
    shader = "shaderlab",
  },
})
vim.lsp.enable("clangd")
vim.lsp.enable("gopls")
vim.lsp.enable("html")
vim.lsp.enable('kotlin_lsp')
vim.lsp.config('kotlin_lsp', {
    single_file_support = false,
})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
vim.lsp.enable("lua_ls")
vim.lsp.enable("kotlin_language_server")
vim.lsp.enable("docker_compose_language_service")
vim.lsp.enable("intelephense")
vim.lsp.enable("cmake")
vim.lsp.enable("glsl_analyzer")
vim.lsp.enable("slangd")
vim.lsp.enable("kotlin_language_server")
vim.lsp.config["shaderlab"] = {
	cmd = { 'shader-ls', '--stdio' },
	filetypes = { 'shaderlab' }
}
vim.lsp.enable("shaderlab");
vim.lsp.enable("pylsp")
vim.lsp.enable("vtsls")
vim.lsp.enable("zls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("eslint")
vim.lsp.enable("jdtls")

vim.lsp.config("roslyn", {
    cmd = {
        "roslyn-language-server",
        "--stdio",
    },
})
require("neo-tree").setup({
	filesystem = {
		use_libuv_file_watcher = true,
		filtered_items = {
			visible = true
		}
	},
})
vim.cmd[[colorscheme tokyonight-night]]

vim.api.nvim_create_user_command('Update', function()
	vim.pack.update()
end, {})
vim.g.vimtex_view_method = 'zathura_simple'
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
