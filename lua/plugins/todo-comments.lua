return {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        signs = false, -- no gutter icons
        keywords = {
            TODO = { icon = " ", color = "info" },
            FIX  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "ISSUE" } },
            NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
            WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        },
        colors = {
            error   = { "DiagnosticError", "#FF5555" },
            warning = { "DiagnosticWarn", "#FFA500" },
            info    = { "DiagnosticInfo", "#00BFFF" },
            hint    = { "DiagnosticHint", "#50FA7B" },
        },
    },
}

