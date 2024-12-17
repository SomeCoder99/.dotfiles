return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},
        globalstatus = true,
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {
          "branch",
          "diff",
          "diagnostics",
        },
        lualine_c = {
          {
            "filetype",
            icon_only = true,
            padding = { left = 1, right = 0 },
          },
          {
            "filename",
            path = 1,
            padding = { left = 0 },
          },
        },
        lualine_x = {},
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}
