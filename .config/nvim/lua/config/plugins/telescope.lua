return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      defaults = {
        borderchars = {
          prompt = { " ", " ", " ", " ", " ", " ", " ", " " },
          results = { " ", " ", " ", " ", " ", " ", " ", " " },
          preview = { "─", "│", "─", " ", "─", "┐", "┘", "─" },
        },
        prompt_prefix = "  ",
        selection_caret = " ",
        multi_icon = "+",
        results_title = "  Items",
        prompt_title = "  Search",
      },
      pickers = {
        find_files = {
          prompt_title = " Find Files",
        },
        live_grep = {
          prompt_title = "󰦨 Live Grep",
        },
        help_tags = {
          prompt_title = " Help Tags",
        },
      },
    },
  },
}
