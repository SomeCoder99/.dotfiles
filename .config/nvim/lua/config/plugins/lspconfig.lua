return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },

  opts = {
    servers = {
      lua_ls = {},
      html = {},
      cssls = {},
      jsonls = {},
      ts_ls = {},
      intelephense = {},
      emmet_ls = {
        filetypes = {
          "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug",
          "sass", "scss", "svelte", "typescriptreact", "vue", "htmlangular", "php",
        },
      },
      rust_analyzer = {},
    },
  },

  config = function(_, opts)
    vim.diagnostic.config {
      float = {
        border = "single",
      },
      underline = false,
      signs = true,
    }

    local handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" }),
    }

    local lspconfig = require("lspconfig")
    for server, config in pairs(opts.servers) do
      config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
      config.capabilities.textDocument.completion.completionItem.snippetSupport = true

      function config.on_attach(client, bufnr)
        local keymaps = require("config.lsp_keymaps")
        for mode, mappings in pairs(keymaps) do
          for key, opt in pairs(mappings) do
            vim.keymap.set(mode, key, opt[1], { desc = opt[2], buffer = bufnr })
          end
        end
      end

      config.handlers = config.handlers or {}
      for k, v in pairs(handlers) do
        config.handlers[k] = v
      end

      lspconfig[server].setup(config)
    end
  end
}
