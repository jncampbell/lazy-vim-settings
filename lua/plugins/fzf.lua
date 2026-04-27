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
      files = {
        fd_opts = "--color=never --type f --hidden --no-ignore --exclude .git",
        rg_opts = "--color=never --files --hidden --no-ignore -g '!.git'",
        find_opts = [[-type f \! -path '*/\.git/*']],
      },
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --hidden --no-ignore -g '!.git'",
      },
    },
  },
}
