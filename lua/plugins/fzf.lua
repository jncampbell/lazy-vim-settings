return {
  -- Disable telescope
  { "nvim-telescope/telescope.nvim", enabled = false },

  -- Use fzf-lua instead
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules/.*",
          "vendor/.*",
          "yarn%.lock",
          "package%-lock%.json",
          "Gemfile%.lock",
          "%.log",
          "tmp/.*",
          "log/.*",
          "dist/.*",
          "build/.*",
          "%.min%.js",
          "%.min%.css",
          "%.git/.*",
        },
      },
    },
  },
}
