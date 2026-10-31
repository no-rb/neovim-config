return {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact" }, -- Indlæses kun i relevante filer
    config = function()
        vim.g.user_emmet_leader_key = ','
    end
}
