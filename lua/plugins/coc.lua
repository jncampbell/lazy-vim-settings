return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    lazy = false,
    config = function()
      -- Tab completion
      vim.keymap.set("i", "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], { silent = true, expr = true })
      vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], { silent = true, expr = true })
      vim.keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], { silent = true, expr = true })

      -- GoTo code navigation
      vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
      vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })
      vim.keymap.set("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true })

      -- Auto-install coc extensions if not already installed
      local extensions = {
        "coc-tsserver",
        "coc-eslint",
        "coc-prettier",
        "coc-solargraph",  -- Ruby LSP
      }
      vim.g.coc_global_extensions = extensions
    end,
  },

  -- Disable LazyVim's built-in LSP plugins to avoid conflict with coc.nvim
  { "neovim/nvim-lspconfig", enabled = false },
  { "mason-org/mason.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },
}
