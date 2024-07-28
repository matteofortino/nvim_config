return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting

    null_ls.setup {
      sources = {
        formatting.prettier.with {
          extra_args = { "--single-quote" },
        },
        -- Add other formatters if needed
        formatting.clang_format.with {
          extra_args = { "--style=Google" },
        },
      },
      on_attach = function(client, bufnr)
        if client.resolved_capabilities.document_formatting then
          vim.api.nvim_clear_autocmds { group = "LspFormatting", buffer = bufnr }
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("LspFormatting", {}),
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.formatting_sync(nil, 1000)
            end,
          })
        end
      end,
    }
  end,
}
