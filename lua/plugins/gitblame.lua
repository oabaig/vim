return {
  "f-person/git-blame.nvim",
  event = "VeryLazy",
  config = function()
    require("gitblame").setup({
      enabled = true,
    })
    vim.g.gitblame_message_template = "<author>, <date> • <summary>"
    vim.g.gitblame_date_format = "%r" -- relative dates (e.g. "3 weeks ago")
  end,
}
