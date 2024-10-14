return {
	-- lspconfig
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		dependencies = {
			"mason.nvim",
			{ "williamboman/mason-lspconfig.nvim", config = function() end },
		}
	},
	-- mason
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		config = function()
			require("mason").setup({})
		end
	}
}
