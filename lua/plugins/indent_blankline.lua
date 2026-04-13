return {
  -- Add indentation guides even on blank lines
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      highlight = {
        "Whitespace",
      },
      char = "┊",
    },
    scope = {
      show_start = false,
      show_end = false,
      char = "│",
      highlight = {
        "IblScope",
      },
    },
  },
}
