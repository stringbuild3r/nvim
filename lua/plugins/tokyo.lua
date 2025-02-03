
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm",  -- "night", "storm", or "moon"
    transparent = false,
    styles = {
      comments = { italic = false },     -- No italics for comments
      keywords = { italic = false },     -- No italics for keywords
      functions = { bold = false },      -- No bold for function names
      variables = { bold = false },      -- No bold for variables
      sidebars = "dark",                 -- Dark sidebars
      floats = "dark",                   -- Dark floating windows
    },
    on_colors = function(colors)
      colors.bg = "#000000"             -- Main background
      colors.bg_dark = "#000000"        -- Darker background
      colors.bg_float = "#000000"       -- Floating windows
      colors.bg_sidebar = "#000000"     -- Sidebar background
      colors.bg_statusline = "#000000"  -- Statusline background
      colors.bg_popup = "#000000"       -- Popup background
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")

    -- Force background for specific UI elements
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#000000", italic = false, bold = false })
    vim.api.nvim_set_hl(0, "Comment", { italic = false })   -- Disable italics for comments
    vim.api.nvim_set_hl(0, "Keyword", { italic = false })   -- Disable italics for keywords
    vim.api.nvim_set_hl(0, "Function", { bold = false })    -- Disable bold for functions
    vim.api.nvim_set_hl(0, "Identifier", { bold = false })  -- Disable bold for identifiers
  end,
}
