return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.clazy.with({extra_args = { "-p=~/Documents/olb" }}),
      },
    })
    vim.keymap.set("n", ";", vim.lsp.buf.format, {})
  end,
}
