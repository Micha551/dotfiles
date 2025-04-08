return{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.cmd("Neotree filesystem reveal right")
		vim.keymap.set('n', '<leader>n', ":Neotree focus<CR>", {})
		vim.keymap.set('n', '<leader>s', ":Neotree filesystem toggle<CR>", {})
	end
}
