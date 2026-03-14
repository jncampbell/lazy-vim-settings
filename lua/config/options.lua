-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Automatically set cwd to project root (detected by .git, package.json, etc.)
vim.g.root_spec = { "lsp", { ".git", "package.json", "Makefile", "Gemfile" }, "cwd" }

-- If neovim is opened with a directory argument, cd into it
if vim.fn.argc() == 1 then
  local arg = vim.fn.argv(0)
  if vim.fn.isdirectory(arg) == 1 then
    vim.cmd("cd " .. arg)
  end
end
