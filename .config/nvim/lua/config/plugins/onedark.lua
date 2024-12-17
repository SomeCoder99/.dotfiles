return {
  {
    "navarasu/onedark.nvim",
    config = function(_, opts)
      require("onedark").setup(opts)
      require("onedark").load()
    end,

    opts = {
      style = "darker",
      code_style = {
        comments = "italic",
      },

      highlights = {
        Cursor = { fg = "$black", bg = "$fg" },
        CursorInsert = { fg = "$black", bg = "$blue" },
        CursorVisual = { fg = "$black", bg = "$purple" },
        CursorReplace = { fg = "$black", bg = "$red" },
        NvimTreeWinSeparator = { bg = "$bg0", fg = "$bg0" },

        BlinkCmpMenu = { bg = "$bg_d" },
        BlinkCmpMenuBorder = { bg = "$bg_d" },
        BlinkCmpMenuSelection = { bg = "$bg3" },
        BlinkCmpScrollBarThumb = { bg = "$grey" },
        BlinkCmpScrollBarGutter = { bg = "$bg_d" },
        BlinkCmpLabelDeprecated = { fg = "$yellow", fmt = "strikethrough" },
        BlinkCmpLabelMatch = { fg = "$cyan" },
        BlinkCmpDoc = { bg = "$bg_d" },
        BlinkCmpDocBorder = { bg = "$bg_d" },
        BlinkCmpDocSeparator = { fg = "$bg0" },
        BlinkCmpSignatureHelp = { bg = "$bg_d" },
        BlinkCmpSignatureHelpBorder = { bg = "$bg_d" },
        BlinkCmpSignatureHelpActiveParameter = { bg = "$blue", fg = "$bg0" },
        BlinkCmpKindDefault = { fg = "$purple" },
        BlinkCmpKindArray = { fg = "$yellow" },
        BlinkCmpKindBoolean = { fg = "$orange" },
        BlinkCmpKindClass = { fg = "$yellow" },
        BlinkCmpKindColor = { fg = "$green" },
        BlinkCmpKindConstant = { fg = "$orange" },
        BlinkCmpKindConstructor = { fg = "$blue" },
        BlinkCmpKindEnum = { fg = "$purple" },
        BlinkCmpKindEnumMember = { fg = "$yellow" },
        BlinkCmpKindEvent = { fg = "$yellow" },
        BlinkCmpKindField = { fg = "$purple" },
        BlinkCmpKindFile = { fg = "$blue" },
        BlinkCmpKindFolder = { fg = "$orange" },
        BlinkCmpKindFunction = { fg = "$blue" },
        BlinkCmpKindInterface = { fg = "$green" },
        BlinkCmpKindKey = { fg = "$cyan" },
        BlinkCmpKindKeyword = { fg = "$cyan" },
        BlinkCmpKindMethod = { fg = "$blue" },
        BlinkCmpKindModule = { fg = "$orange" },
        BlinkCmpKindNamespace = { fg = "$red" },
        BlinkCmpKindNull = { fg = "$grey" },
        BlinkCmpKindNumber = { fg = "$orange" },
        BlinkCmpKindObject = { fg = "$red" },
        BlinkCmpKindOperator = { fg = "$red" },
        BlinkCmpKindPackage = { fg = "$yellow" },
        BlinkCmpKindProperty = { fg = "$cyan" },
        BlinkCmpKindReference = { fg = "$orange" },
        BlinkCmpKindSnippet = { fg = "$red" },
        BlinkCmpKindString = { fg = "$green" },
        BlinkCmpKindStruct = { fg = "$purple" },
        BlinkCmpKindText = { fg = "$light_grey" },
        BlinkCmpKindTypeParameter = { fg = "$red" },
        BlinkCmpKindUnit = { fg = "$green" },
        BlinkCmpKindValue = { fg = "$orange" },
        BlinkCmpKindVariable = { fg = "$purple" },

        TelescopePromptNormal = { bg = "$bg1" },
        TelescopePromptBorder = { bg = "$bg1" },
        TelescopePromptTitle = { bg = "$bg1" },
        TelescopeResultsTitle = { bg = "$bg2" },
        TelescopeResultsNormal = { bg = "$bg2" },
        TelescopeResultsBorder = { bg = "$bg2" },
        TelescopeSelection = { bg = "$bg1" },
        TelescopePreviewTitle = { bg = "$bg0" },
        TelescopePreviewNormal = { bg = "$bg0" },
        TelescopePreviewBorder = { bg = "$bg0", fg = "$fg" },
      },
    },
  },
}
