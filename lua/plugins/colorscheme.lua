-- Define your list of themes
local colorschemes = {
  "dracula",
  "dracula-soft",
  "tokyonight",
  "tokyonight-moon",
  "tokyonight-night",
  "tokyonight-storm",
  "oxocarbon",
  "night-owl",
  "ayu",
  "ayu-dark",
  "gruvbox",
  "alduin",
  "atom-dark",
  "atom-dark-256",
}

-- Delay setting the colorscheme until after Lazy has loaded all plugins
vim.schedule(function()
  vim.cmd.colorscheme(colorschemes[math.random(#colorschemes)])
end)

return {
  { "Mofiqul/dracula.nvim" },
  { "folke/tokyonight.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "haishanh/night-owl.vim" },
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "AlessandroYorba/Alduin" },
  { "gosukiwi/vim-atom-dark" },
}
