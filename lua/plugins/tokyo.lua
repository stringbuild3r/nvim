return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm",  -- "night", "storm", or "moon"
    transparent = false,
    styles = {
      sidebars = "dark",
      floats = "dark",
    },
    on_colors = function(colors)
      colors.bg = "#000000"          -- Main background
      colors.bg_dark = "#000000"     -- Darker background (splits, etc.)
      colors.bg_float = "#000000"    -- Floating windows
      colors.bg_sidebar = "#000000"  -- Sidebars like NvimTree
      colors.bg_statusline = "#000000" -- Statusline background
      colors.bg_popup = "#000000"    -- Popup background
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")

    -- Force background for specific UI elements
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })            -- Main editor background
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })       -- Floating windows
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000" })        -- Statusline
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000" })       -- Background under tabline
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "#000000" })      -- Window separators
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "#000000" })         -- Vertical split separators
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })        -- Gutter (where line numbers/signs show)
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })            -- Line number background
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#000000" })      -- Current line number background
  end,
}
