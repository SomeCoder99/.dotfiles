local keymaps = {
  normal = {
    n = {
      ["<leader>fe"] = { cmd = "NvimTreeToggle" },
      ["<leader>ff"] = { cmd = "Telescope find_files" },
      ["<leader>fg"] = { cmd = "Telescope live_grep" },
      ["<leader>fh"] = { cmd = "Telescope help_tags" },
      ["<leader><right>"] = { cmd = "BufferLineCycleNext" },
      ["<leader><left>"] = { cmd = "BufferLineCyclePrev" },
      ["<leader>bp"] = { cmd = "BufferLinePick" },
      ["<leader>bd"] = { cmd = "bd" },
      ["<leader>bD"] = { cmd = "BufferLinePickClose" },
      ["<leader>bo"] = { cmd = "BufferLineCloseOthers" },
      ["<leader>t"] = "<cmd>term<cr>i",
    },
  },
}

for mode, mappings in pairs(keymaps.normal) do
  for key, action in pairs(mappings) do
    local rhs
    if type(action) == "string" or type(action) == "function" then
      rhs = action
    elseif action.fn then
      rhs = action.fn
    elseif action.cmd then
      rhs = string.format("<cmd>%s<cr>", action.cmd)
    elseif action.x then
      rhs = action.x
    end

    if rhs then
      vim.keymap.set(mode, key, rhs, type(action) == "table" and action.opt or nil)
    end
  end
end
