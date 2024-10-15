return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "mason.nvim",
        { "williamboman/mason-lspconfig.nvim", config = function() end },
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "chrisgrieser/cmp-nerdfont"
    },
    config = function()
        local cmp = require("cmp")
        if not cmp then
            return
        end

        local luasnip = require("luasnip")
        if not luasnip then return end
        local lsp_symbols = {
            Text = "   (Text) ",
            Method = "   (Method)",
            Function = " 󰊕  (Function)",
            Constructor = "   (Constructor)",
            Field = "   (Field)",
            Variable = "[] (Variable)",
            Class = "   (Class)",
            Interface = "   (Interface)",
            Module = "   (Module)",
            Property = "   (Property)",
            Unit = "   (Unit)",
            Value = "   (Value)",
            Enum = " []  (Enum)",
            Keyword = "   (Keyword)",
            Snippet = "   (Snippet)",
            Color = " 󰃉  (Color)",
            File = "   (File)",
            Reference = "   (Reference)",
            Folder = "   (Folder)",
            EnumMember = "   (EnumMember)",
            Constant = "   (Constant)",
            Struct = "   (Struct)",
            Event = "   (Event)",
            Operator = "   (Operator)",
            TypeParameter = "   (TypeParameter)",
        }

        cmp.setup({
            sources = {
                { name = "buffer" },
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "nerdfont" },
            },
            mapping = {
                ["<cr>"] = cmp.mapping.confirm({select = true}),
                ["<s-tab>"] = cmp.mapping.select_prev_item(),
                ["<tab>"] = cmp.mapping.select_next_item(),
                ["<C-Space>"] = cmp.mapping.complete({ })
            },
            formatting = {
                format = function(entry, item)
                    item.kind = lsp_symbols[item.kind]
                    item.menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[Snippet]",
                    })[entry.source.name]

                    return item
                end,
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        })

    end
}
