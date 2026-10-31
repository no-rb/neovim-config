---@diagnostic disable: undefined-global
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "zls", "clangd", "vtsls", "rust_analyzer", "pyright"},
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config('zls', {
                settings = {
                    zls = {
                        zig_exe_path = vim.fn.exepath('zig'),

                        -- diagnostics
                        enable_ast_check_diagnostics = true,
                        enable_autofix = true,
                        warn_style = true,
                        highlight_global_var_declarations = true,

                        -- strict semantic analysis
                        enable_semantic_tokens = true,
                        enable_inlay_hints = true,
                        inlay_hints_show_variable_type_hints = true,
                        inlay_hints_show_parameter_name = true,
                        inlay_hints_show_builtin = true,
                        inlay_hints_exclude_single_argument = false,
                        inlay_hints_hide_redundant_param_names = false,
                        inlay_hints_hide_redundant_param_names_last_token = false,

                        -- formatting (uses zig fmt under the hood, not much to tune)
                        enable_snippets = true,
                    }
                }
            })

            -- OLS config
            vim.lsp.config('ols', {
                cmd = { 'ols' },           -- or full path: { 'C:/path/to/ols.exe' }
                filetypes = { 'odin' },
                root_markers = { 'ols.json', '.git' },
            })

            vim.lsp.config('rust_analyzer', {
                settings = {
                    ['rust-analyzer'] = {
                        inlayHints = {
                            bindingModeHints = { enable = true },
                            chainingHints = { enable = true },
                            closingBraceHints = { enable = true },
                            parameterHints = { enable = true },
                            typeHints = { enable = true },
                        },
                    },
                },
            })

            vim.lsp.enable('clangd')
            vim.lsp.enable('pyright')
            vim.lsp.enable('ols')
            vim.lsp.enable('rust_analyzer')
            vim.lsp.enable('zls')
        end,
    },
}
