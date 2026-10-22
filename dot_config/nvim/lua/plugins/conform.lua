return {
  'stevearc/conform.nvim',
  config = function()
        require("conform").setup({
          formatters_by_ft = {
                typescript = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                rust = { "rustfmt" },
                haskell = { "ormolu" },
          }
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
              callback = function(args)
                require("conform").format({ bufnr = args.buf })
              end,
        })
  end
}
