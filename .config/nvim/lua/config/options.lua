local o = vim.opt
local g = vim.g
local indent = 2

o.tabstop = indent
o.shiftwidth = indent
o.expandtab = true
o.wrap = false
o.number = true
o.relativenumber = true
o.cursorline = true
o.termguicolors = true
o.undolevels = 1000000
o.guicursor = 'n:block-Cursor,v:block-CursorVisual,i-ci-ve:ver25-CursorInsert,c:block-CursorInsert,cr:hor20-CursorInsert,o:hor50-CursorInsert,r:hor20-CursorReplace'
o.termguicolors = true

g.mapleader = " "
g.maplocalleader = "\\"
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

vim.filetype.add {
  pattern = {
    ["hyprland.conf"] = "hyprlang",
  },
}
