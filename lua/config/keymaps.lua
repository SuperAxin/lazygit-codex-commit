-- LazyGit + Codex AI Commit
vim.keymap.set("n", "<leader>gg", function()
	Snacks.terminal(
		"lazygit --use-config-file " .. vim.fn.shellescape(vim.fn.expand("~/.config/nvim/lazygit/config.yml")),
		{
			cwd = LazyVim.root(),
			win = {
				position = "float",
				width = 0.95,
				height = 0.95,
				border = "rounded",
			},
		}
	)
end, { desc = "LazyGit (Codex AI Commit)" })
