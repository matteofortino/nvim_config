return {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        multiple_windows = true,
        keys = 'etovxqpdygfblzhckisuran',
        uppercase_labels = true
    },
    vim.keymap.set("n", "<leader>fj",function() require("hop").hint_words() end)
}
