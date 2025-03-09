return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    styles = {
      comments = { italic = false, bold = false },
      keywords = { italic = false, bold = false },
      functions = { italic = false, bold = false },
      variables = { italic = false, bold = false },
    },
    disable_ligatures = true, -- if supported by your setup
  },
}
