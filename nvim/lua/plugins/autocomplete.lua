 ---@module 'config.lazy'
return {
    'saghen/blink.cmp',
	event = "BufEnter",
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
    }
}
