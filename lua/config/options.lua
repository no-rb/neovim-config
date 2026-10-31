---@diagnostic disable: undefined-global

vim.o.number = true
vim.opt.cursorline = true

vim.o.signcolumn = 'yes'

vim.opt.relativenumber = true

vim.g.have_nerd_font = true

-- terminal opts
vim.opt.shell = "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"

-- Enable mouse mode
vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.autocomplete = true

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
        end

    end,
})

vim.opt.complete:append('o')

vim.opt.completeopt = { 'menuone', 'noselect' }

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.pumheight = 10
vim.o.pumborder = 'rounded'

-- diagnostic context menu
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  virtual_lines = false,
  signs = true,
  underline = true,
})

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

