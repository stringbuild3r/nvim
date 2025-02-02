return 
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm",  -- You can use "night", "storm", or "moon" as a base
    transparent = false,  -- Keep false if you want to manually set the background
    styles = {
      sidebars = "dark",
      floats = "dark",
    },
    on_colors = function(colors)
      colors.bg = "#000000"  -- Set the background to pitch black
      colors.bg_dark = "#000000"
      colors.bg_float = "#000000"
      colors.bg_sidebar = "#000000"
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}
