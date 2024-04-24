--:w
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = "n"
vim.cmd("autocmd VimEnter * Explore")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.cmd([[
    highlight NvimTreeFolderIcon guifg=#FFFF00
    highlight NvimTreeOpenedFolderIcon guifg=#c6d0f5
    highlight NvimTreeEmptyFolderName guifg=#c6d0f5
    highlight NvimTreeOpenedFolderName guifg=#c6d0f5
    highlight NvimTreeFolderName guifg=#c6d0f5
]])
