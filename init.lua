-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy") -- In init.lua
vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { desc = "Find hidden files" })
