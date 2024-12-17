---@diagnostic disable: missing-fields
return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "folke/lazydev.nvim",
    },
    version = "v0.7.4",
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        ["<c-space>"] = { "show", "hide" },
        ["<c-d>"] = { "show_documentation", "hide_documentation", "fallback" },
        ["<cr>"] = { "accept", "fallback" },
        ["<c-cr>"] = { "select_and_accept", "fallback" },

        ["<down>"] = { "select_next", "fallback" },
        ["<up>"] = { "select_prev", "fallback" },
        ["<c-down>"] = { "scroll_documentation_down", "fallback" },
        ["<c-up>"] = { "scroll_documentation_up", "fallback" },

        ["<tab>"] = { "snippet_forward", "fallback" },
        ["<s-tab>"] = { "snippet_backward", "fallback" },
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      sources = {
        completion = {
          enabled_providers = {
            "lsp",
            "path",
            "snippets",
            "buffer",
            "lazydev",
          },
        },
        providers = {
          lsp = { fallback_for = { "lazydev" } },
          lazydev = { name = "LazyDev", module = "lazydev.integrations.blink" },
        },
      },

      completion = {
        list = {
          selection = "manual",
        },
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
        ghost_text = {
          enabled = true,
        },
        menu = {
          min_width = 35,
          max_height = 10,
          scrolloff = 0,
        },
        documentation = {
          treesitter_highlighting = true,
          window = {
            border = "padded",
          },
        },
      },

      signature = {
        enabled = true,
        window = {
          border = "padded",
          treesitter_highlighting = true,
        },
      },
    },
  },
}
