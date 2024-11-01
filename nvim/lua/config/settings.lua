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

-- always display sign column
vim.opt.signcolumn = "yes"

-- persistent undo
vim.opt.undofile = true

-- autocommands
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.cds" },
    command = "set filetype=cds",
})
