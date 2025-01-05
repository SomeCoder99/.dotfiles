require "nvchad.mappings"

local function find_map(mode, lhs)
  for _, map in ipairs(vim.api.nvim_get_keymap(mode)) do
    ---@diagnostic disable-next-line: undefined-field
    if (lhs or ""):lower() == (map.lhs or ""):lower() then
      ---@diagnostic disable-next-line: undefined-field
      return map.callback or map.rhs
    end
  end
end

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", "<leader>fe", "<CMD>NvimTreeToggle<CR>", { desc = "Open File Explorer" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Telescope Live Grep" })
map("n", "<leader><RIGHT>", find_map("n", "<TAB>"), { desc = "Next Buffer" })
map("n", "<leader><LEFT>", find_map("n", "<S-TAB>"), { desc = "Prev Buffer" })
map("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Delete Buffer" })
map("n", "<leader><leader><cr>", find_map("n", "<M-i>"), { desc = "Open Floating Terminal" })
map("n", "<leader>f=", require("conform").format, { desc = "Format File" })
map("n", "<leader>bo", function()
  local buf = vim.api.nvim_get_current_buf()
  for _, b in ipairs(vim.api.nvim_list_bufs()) do
    if b ~= buf then
      vim.api.nvim_buf_delete(b, { force = true })
    end
  end
end, { desc = "Close Other Buffer" })

unmap("n", "<leader>b")
unmap("n", "<C-n>")
unmap("n", "<leader>x")
unmap("n", "<leader>fw")
