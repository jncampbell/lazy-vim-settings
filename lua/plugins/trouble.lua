return {
  "folke/trouble.nvim",
  lazy = false,
  config = function()
    require("trouble").setup()
    vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, desc = "Toggle Trouble" })
    vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, desc = "Workspace Diagnostics" })
    vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, desc = "Document Diagnostics" })
  end,
}
