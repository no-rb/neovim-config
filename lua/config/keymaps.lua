vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open netrw" })

vim.keymap.set('n', '<leader>th', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle Inlay Hints' })

-- Open usual project folder exe_path
vim.keymap.set('n', '<leader>bv', function()
    vim.cmd 'Explore C:/Users/noahr/Documents/neovim-projects/'
    --  vim.cmd 'Ex'
end, { desc = 'Open standard project folder' })
-- Open main lua folder (w. plugins, keymaps, options, etc.)
vim.keymap.set('n', '<leader>bc', function()
    vim.cmd 'Explore C:/Users/noahr/AppData/Local/nvim/'
end, { desc = 'Open nvim Lua folder' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
