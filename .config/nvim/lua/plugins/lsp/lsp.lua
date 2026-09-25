local server_opts = {
    -- lua_ls = {}, -- use lazydev instead
}

return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'saghen/blink.cmp',
    },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)


        vim.lsp.config('*', {
            capabilities = capabilities,
        })

        -- vim.lsp.config("lua_ls", server_opts.lua_ls)


        local servers = require("mason-lspconfig").get_installed_servers()
        vim.lsp.enable(servers)

        -- Keymaps e azioni legate all'aggancio dell'LSP sul buffer corrente
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
            callback = function(event)
                local set = vim.keymap.set
                local opts = { buffer = event.buf, noremap = true, silent = true }

                set("n", "gd", vim.lsp.buf.definition, opts)
                set("n", "gD", vim.lsp.buf.declaration, opts)
                set("n", "K", vim.lsp.buf.hover, opts)
                set("n", "gy", vim.lsp.buf.type_definition, opts)
                set("n", "<leader>K", vim.diagnostic.open_float, opts)
                set("n", "<leader>w", vim.diagnostic.setloclist, opts)
            end
        })

        -- Gestione della Quickfix Window (chiusura rapida con 'q')
        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('GlobalQuickfixSpecs', { clear = true }),
            pattern = 'qf',
            callback = function()
                vim.keymap.set('n', 'q', '<cmd>q<CR>', { buffer = true, desc = 'Close window' })
            end
        })

        -- Setup grafico dei diagnostici di Neovim
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "✘",
                    [vim.diagnostic.severity.WARN]  = "▲",
                    [vim.diagnostic.severity.HINT]  = "⚑",
                    [vim.diagnostic.severity.INFO]  = "»",
                }
            },
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            float = {
                focusable = false,
                style = "minimal",
                source = true,
            }
        })
    end,
}
