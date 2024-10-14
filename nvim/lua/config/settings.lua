-- search options
vim.opt.nu = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8

-- tab options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- relative line numbers
vim.opt.rnu = true

-- sync clipboard
vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 1 then
		vim.api.nvim_exec(
			[[
			let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
		]],
			true
		)
	end


-- persistent undo
vim.opt.undofile = true
