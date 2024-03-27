
vim.api.nvim_command("syntax on") -- turn on syntax
vim.o.mouse = 'a' -- turn on mouse
vim.o.number = true -- turn on line numbers
vim.o.lazyredraw = true -- make redrawing lazy

-- fold for c,cpp and cuda
vim.cmd('autocmd Syntax c,cpp,cuda setlocal foldmethod=syntax')
vim.cmd('autocmd Syntax c,cpp,cuda normal zR')


-- tabing should be 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- make it possible to mouse left or right to a next line
vim.o.whichwrap = "b,s,<,>,[,]"

-- forgot what this does
vim.o.cinoptions = 'g0,N-s'
vim.o.cinkeys = '0{,0},0),0],:,!^F,o,0,e'


function is_wsl()
  local f = io.popen("uname -r")
  local s = f:read("*a")
  f:close()
  return string.find(s, "microsoft") ~= nil
end

if is_wsl() then
  vim.cmd([[augroup Yank
  autocmd!                
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]])
end

