return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      local configs = require "nvim-treesitter.configs"
      configs.setup(opts)
    end,

    opts = {
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
