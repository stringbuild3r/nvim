return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        italic = {
          strings = false,
          comments = true,
          operators = false,
        },
        overrides = {
          SignColumn = { bg = "#292829" }, 
          FoldColumn = { bg = "#292829"},
        },
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "AstroNvim/astroui",
    opts = function(_, opts)
      local orig_colors = opts.status.colors
      opts.status.colors = function(colors)
        if type(orig_colors) == "table" then
          -- extend the color table
          require("astrocore").extend_tbl(colors, orig_colors)
        elseif type(orig_colors) == "function" then
          local new_colors = orig_colors(colors)
          if new_colors then colors = new_colors end
        end

        colors.fg, colors.bg = colors.bg, colors.fg
        colors.section_fg, colors.section_bg = colors.section_bg, colors.section_fg

        return colors
      end
    end,
  },
}
