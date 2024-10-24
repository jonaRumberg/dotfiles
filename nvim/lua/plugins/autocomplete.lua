return {
    'saghen/blink.cmp',
    lazy = false,
    version = 'v0.*',
    opts = {
        nerd_font_variant = 'mono',

        keymap = {
            accept = '<CR>',
            select_next = '<Tab>',
            select_prev = '<S-Tab>',
        },

        windows = {
            autocomplete = {
                selection = 'manual'
            }
        },

        sources = {
            providers = {
                lsp = {
                    name = 'LSP',
                    module = 'blink.cmp.sources.lsp',

                    --- *All* of the providers have the following options available
                    --- NOTE: All of these options may be functions to get dynamic behavior
                    --- See the type definitions for more information
                    enabled = true, -- whether or not to enable the provider
                    transform_items = nil, -- function to transform the items before they're returned
                    should_show_items = true, -- whether or not to show the items
                    max_items = nil, -- maximum number of items to return
                    min_keyword_length = 0, -- minimum number of characters to trigger the provider
                    fallback_for = {}, -- if any of these providers return 0 items, it will fallback to this provider
                    score_offset = 0, -- boost/penalize the score of the items
                    override = nil, -- override the source's functions
                },
                path = {
                    name = 'Path',
                    module = 'blink.cmp.sources.path',
                    score_offset = 3,
                    opts = {
                        trailing_slash = false,
                        label_trailing_slash = true,
                        get_cwd = function(context) return vim.fn.expand(('#%d:p:h'):format(context.bufnr)) end,
                        show_hidden_files_by_default = false,
                    }
                },
                snippets = {
                    name = 'Snippets',
                    module = 'blink.cmp.sources.snippets',
                    score_offset = -3,
                    opts = {
                        friendly_snippets = true,
                        search_paths = { vim.fn.stdpath('config') .. '/snippets' },
                        global_snippets = { 'all' },
                        extended_filetypes = {},
                        ignored_filetypes = {},
                    }

                    --- Example usage for disabling the snippet provider after pressing trigger characters (i.e. ".")
                    -- enabled = function(ctx) return ctx ~= nil and ctx.trigger.kind == vim.lsp.protocol.CompletionTriggerKind.TriggerCharacter end,
                },
                buffer = {
                    enabled = false,
                    name = 'Buffer',
                    module = 'blink.cmp.sources.buffer',
                    fallback_for = { 'lsp' },
                },
            },
        },

    }
}
