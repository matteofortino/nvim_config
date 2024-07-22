return {
  "nvim-tree/nvim-tree.lua",
  config = function ()
    require("nvim-tree").setup({
      view = {
        width = 35,
        side = "right",
      },
    })
  end
  --vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>"),
  --vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>"),
}
