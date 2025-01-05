return {
  {
    "hrsh7th/nvim-cmp",
    opts = function (_, opt)
      local cmp = require("cmp")
      opt.mapping = {
        ['<C-DOWN>'] = cmp.mapping.scroll_docs(4),
        ['<C-UP>'] = cmp.mapping.scroll_docs(-4),
        ['<DOWN>'] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
        ['<UP>'] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ['<CR>'] = cmp.mapping.confirm { select = false },
        ['<C-SPACE>'] = function ()
          if cmp.visible() then
            cmp.close()
          else
            cmp.complete()
          end
        end,
        ['<C-D>'] = function ()
          if cmp.visible_docs() then
            cmp.close_docs()
          else
            cmp.open_docs()
          end
        end,
      }
      return opt
    end,
  }
}
