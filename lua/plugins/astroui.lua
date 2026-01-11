-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "gruvbox",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
      gruvbox = {
        -- Ensure consistent dark background
        Normal = { bg = "#282828" },
        NormalNC = { bg = "#282828" },
        NormalFloat = { bg = "#282828" },
        SignColumn = { bg = "#282828" },
        LineNr = { bg = "#282828" },
        FoldColumn = { bg = "#282828" },
        StatusLine = { bg = "#282828" },
        StatusLineNC = { bg = "#282828" },
        TabLine = { bg = "#282828" },
        TabLineFill = { bg = "#282828" },
        WinSeparator = { bg = "#282828", fg = "#3c3836" },
        VertSplit = { bg = "#282828", fg = "#3c3836" },
        NeoTreeNormal = { bg = "#282828" },
        NeoTreeNormalNC = { bg = "#282828" },
        NeoTreeEndOfBuffer = { bg = "#282828" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- static loading indicator instead of animated
      LSPLoading1 = "●",
      LSPLoading2 = "●",
      LSPLoading3 = "●",
      LSPLoading4 = "●",
      LSPLoading5 = "●",
      LSPLoading6 = "●",
      LSPLoading7 = "●",
      LSPLoading8 = "●",
      LSPLoading9 = "●",
      LSPLoading10 = "●",
    },
  },
}
