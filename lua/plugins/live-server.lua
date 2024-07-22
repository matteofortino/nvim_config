return {
  "wolandark/vim-live-server",
  vim.keymap.set("n", "<leader>ls", function ()
    os.execute('live-server &')
    print("live server started...")
  end, {silent = true, desc = "start a live seriver"}),

  vim.keymap.set("n", "<leader>lt", function ()
    vim.cmd('!pkill -f /Users/matteo/Library/Application Support/Herd/config/nvm/versions/node/v22.5.1/bin/live-server')
    print("live server killed...")
  end, {silent = true, desc = "stop a live seriver"})
}
