return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = true,
  opts = {
    contrast = "hard",
    transparent_mode = false,
    italic = {
      strings = false,
      comments = false,
      operators = false,
      folds = false,
    },
    palette_overrides = {
      -- Gruvbox Material dark hard uses slightly muted/earthy colors
      dark0_hard = "#1d2021",
      dark0 = "#282828",
      dark1 = "#32302f",
      dark2 = "#45403d",
      dark3 = "#5a524c",
      dark4 = "#665c54",
      
      light0_hard = "#f9f5d7",
      light0 = "#fbf1c7",
      light1 = "#ebdbb2",
      light2 = "#d5c4a1",
      light3 = "#bdae93",
      light4 = "#a89984",
      
      bright_red = "#ea6962",
      bright_green = "#a9b665",
      bright_yellow = "#d8a657",
      bright_blue = "#7daea3",
      bright_purple = "#d3869b",
      bright_aqua = "#89b482",
      bright_orange = "#e78a4e",
      
      neutral_red = "#c14a4a",
      neutral_green = "#6c782e",
      neutral_yellow = "#b47109",
      neutral_blue = "#45707a",
      neutral_purple = "#945e80",
      neutral_aqua = "#4c7a5d",
      neutral_orange = "#c35e0a",
      
      faded_red = "#ae5858",
      faded_green = "#6f8352",
      faded_yellow = "#a96b2c",
      faded_blue = "#5b8794",
      faded_purple = "#8f5779",
      faded_aqua = "#659679",
      faded_orange = "#af6840",
      
      gray = "#928374",
    },
    overrides = {
      -- Ensure consistent background color for various UI elements
      Normal = { bg = "#1d2021", fg = "#d4be98" }, -- Material uses a different text color
      NormalFloat = { bg = "#1d2021" },
      SignColumn = { bg = "#1d2021" },
      FoldColumn = { bg = "#1d2021" },
      LineNr = { bg = "#1d2021", fg = "#665c54" },
      CursorLineNr = { bg = "#1d2021", fg = "#d8a657" },
      VertSplit = { bg = "#1d2021", fg = "#45403d" },
      StatusLine = { bg = "#1d2021", fg = "#d4be98" },
      StatusLineNC = { bg = "#1d2021", fg = "#665c54" },
      TabLine = { bg = "#1d2021", fg = "#a89984" },
      TabLineFill = { bg = "#1d2021" },
      TabLineSel = { bg = "#32302f", fg = "#d4be98" },
      
      Comment = { fg = "#665c54" },
      String = { fg = "#a9b665" },
      Identifier = { fg = "#7daea3" },
      Function = { fg = "#89b482" },
      Keyword = { fg = "#ea6962" },
      Operator = { fg = "#e78a4e" },
      
      Search = { bg = "#3c3836", fg = "#d8a657" },
      IncSearch = { bg = "#d8a657", fg = "#1d2021" },
      
      Pmenu = { bg = "#282828", fg = "#d4be98" },
      PmenuSel = { bg = "#45403d", fg = "#d4be98" },
      PmenuSbar = { bg = "#32302f" },
      PmenuThumb = { bg = "#7c6f64" },
    }
  }
}
