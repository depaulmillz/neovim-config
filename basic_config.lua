
vim.api.nvim_command("syntax on") -- turn on syntax
vim.o.mouse = 'a' -- turn on mouse
vim.o.number = true -- turn on line numbers
vim.o.lazyredraw = true -- make redrawing lazy

-- tabing should be 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- make it possible to mouse left or right to a next line
vim.o.whichwrap = "b,s,<,>,[,]"
